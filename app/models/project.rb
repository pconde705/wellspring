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


  def self.top_five_results(query_param)
    param = '%' + query_param.downcase + '%'
    Project.where('lower(title) LIKE ?', param).limit(5)
  end
  

end
