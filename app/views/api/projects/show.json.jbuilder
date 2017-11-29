

json.projects do
  json.extract! @project,
    :id, :title, :creator_id,
    :category,
    :main_image_url, :extra_image_url,
    :description, :goal
    json.user @project.user.username
    json.rewards @project.rewards
    json.money_raised @project.total_amount_raised
    json.backers @project.total_number_of_backers
end
