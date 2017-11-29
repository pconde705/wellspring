
@projects.each do |project|
  json.set! project.id do
    json.extract! project,
      :id,
      :title,
      :category,
      :main_image_url
  end
end
