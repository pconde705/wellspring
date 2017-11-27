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

require 'test_helper'

class RewardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
