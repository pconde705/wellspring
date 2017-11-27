

json.projects do
  json.extract! @project,
    :id, :title, :creator_id,
    :category, :money_raised,
    :main_image_url, :extra_image_url,
    :description, :goal, :backers
    json.user @project.user.username
end
