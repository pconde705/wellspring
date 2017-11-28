# == Schema Information
#
# Table name: rewards
#
#  id                 :integer          not null, primary key
#  project_id         :integer          not null
#  amount             :integer          not null
#  reward_subtitle    :string           not null
#  reward_description :string           not null
#  includes           :string
#  reward_date        :date
#  reward_backers     :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Reward < ApplicationRecord

  validates :project_id, :includes, :reward_date, presence: true
  validates :amount, :reward_subtitle, :reward_description, presence: true, uniqueness: true

  belongs_to :project,
    class_name: :Project,
    foreign_key: :project_id


end
