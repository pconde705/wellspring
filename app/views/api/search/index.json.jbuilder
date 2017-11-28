
@projects.each do |project|
  json.set! project.id do
    json.extract! project,
      :title,
      :category,
      :description
  end
end
