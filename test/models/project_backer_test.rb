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
#  cash_only  :integer
#

require 'test_helper'

class ProjectBackerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
