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
  validates :category, :description, :goal, presence: true
end
