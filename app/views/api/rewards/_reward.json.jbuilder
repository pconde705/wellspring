json.extract! reward, :id, :project_id, :amount, :reward_subtitle, :reward_description,
:includes, :reward_date
# :reward_backers
json.reward_backers reward.backer_reward_count
