

json.projects do
  json.extract! @project,
    :id, :title, :creator_id,
    :category,
    :main_image_url, :extra_image_url,
    :description, :goal
    json.user @project.user.username

    json.rewards do
      json.array! @project.rewards do |reward|
        json.partial! 'api/rewards/reward', reward: reward
      end
    end
    
    json.money_raised @project.total_amount_raised
    json.backers @project.total_number_of_backers
end
