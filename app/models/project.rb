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
    Project.where("money_raised > goal").count
  end
  # You may have to seed the databse with money_raised: 0 rather than null
end
