
@projects.each do |project|
  json.set! project.id do
    json.extract! project,
      :id, :title, :creator_id,
      :category, :money_raised,
      :main_image_url, :extra_image_url,
      :description, :goal, :backers
  end
end
