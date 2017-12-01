# == Schema Information
#
# Table name: projects
#
#  id              :integer          not null, primary key
#  title           :string           not null
#  creator_id      :integer          not null
#  category        :string           not null
#  main_image_url  :string
#  extra_image_url :string
#  description     :text             not null
#  goal            :integer          not null
#  money_raised    :integer
#  backers         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Project < ApplicationRecord

  validates :title, presence: true, uniqueness: true
  validates :category, :description, :goal, :main_image_url, :extra_image_url, presence: true

  belongs_to :user,
    foreign_key: :creator_id,
    class_name: :User

  has_many :rewards

  has_many :project_backers,
    class_name: :ProjectBacker,
    foreign_key: :project_id

  has_many :user_backers,
    through: :project_backers,
    source: :user

  has_many :reward_backers,
    through: :project_backers,
    source: :reward

  def self.top_five_results(query_param)
    param = '%' + query_param.downcase + '%'
    Project.where('lower(title) LIKE ?', param).limit(5)
  end

  def total_amount_raised
    first_value = project_backers.where('cash_only != 0').sum(:cash_only)
    second_value = reward_backers.sum(:amount)
    first_value + second_value
  end

  def total_number_of_backers
    user_backers.uniq.count
  end

  def self.all_projects
    Project.all.count
  end

  def self.all_funded_projects
    result = ActiveRecord::Base.connection.execute(<<-SQL)
      SELECT
        projects.id
      FROM
        projects
      FULL OUTER JOIN project_backers AS reward_backers ON reward_backers.project_id = projects.id
      FULL OUTER JOIN rewards ON reward_backers.reward_id = rewards.id
      FULL OUTER JOIN project_backers AS cash_backers ON cash_backers.project_id = projects.id
      GROUP BY
        projects.id
      HAVING
        sum(cash_backers.cash_only + rewards.amount) > projects.goal
    SQL
    result.count
  end
  # Thanks to the above SQL query the funded projects on the statistics page will reflect all funded projects. But they have to click a reward at least once.
  # Even if someone gives them the total amount right away, click on the reward and it will updated as funded.
end
