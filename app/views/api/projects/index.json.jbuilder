
@projects.each do |project|
  json.set! project.id do
    json.extract! project,
      :id, :title, :creator_id,
      :category, :money_raised,
      :main_image_url, :extra_image_url,
      :description, :goal, :backers
      json.user project.user.username
      json.rewards project.rewards
      json.money_raised project.total_amount_raised
      json.backers project.total_number_of_backers
  end
end
