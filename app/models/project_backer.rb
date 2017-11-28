# == Schema Information
#
# Table name: project_backers
#
#  id         :integer          not null, primary key
#  project_id :integer
#  reward_id  :integer
#  backer_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProjectBacker < ApplicationRecord

  belongs_to :project,
    class_name: :Project,
    foreign_key: :project_id

  belongs_to :reward,
    class_name: :Reward,
    foreign_key: :reward_id

  belongs_to :user,
    class_name: :User,
    foreign_key: :backer_id
end
