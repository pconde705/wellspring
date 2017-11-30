# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# == Schema Information
#
# Table name: projects
#
#  title           :string           not null
#  creator_id      :integer          not null
#  category        :string           not null
#  main_image_url  :string
#  extra_image_url :string
#  description     :text             not null
#  goal            :integer          not null
#  money_raised    :integer
#  backers         :integer

# Table name: rewards
#  project_id         :integer          not null
#  amount             :integer          not null
#  reward_subtitle    :string           not null
#  reward_description :string           not null
#  includes           :string
#  reward_date        :date
#  reward_backers     :integer

# music
# comics
# film
# food
# photography
# games
# technology
# publishing
# arts

require 'faker'

User.create(username: "demoUser", email: "demoUser@demo.com", password: "123456")
User.create(username: "patrick", email: "patrick@patrick.com", password: "123456")
10.times do
  User.create(username: Faker::Name.last_name, email: Faker::Internet.email, password: "123456")
end


Project.create(
  title: "Classical Russian Ballet", creator_id: 2, category: "arts",
  main_image_url: "http://res.cloudinary.com/lopopoa2/image/upload/v1511664088/pexels-photo-209948_sziq5i.jpg",
  extra_image_url: "http://res.cloudinary.com/lopopoa2/image/upload/v1511664536/ballet-production-performance-don-quixote-45258_rl9ko2.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 50000, money_raised: 13420)

Reward.create(project_id: 1, amount: 1, reward_subtitle: "Anything helps", reward_description: "Even the smallest amount helps us",
  includes: "Thank you!", reward_date: '2018-01-31')
Reward.create(project_id: 1, amount: 10, reward_subtitle: "Anything helps plus", reward_description: "Even the second smallest amount helps us",
  includes: "Thank you!!!", reward_date: '2018-01-31')
Reward.create(project_id: 1, amount: 50, reward_subtitle: "Ticket to the show", reward_description: "You will get one ticket to the show for the first available date that isn't sold out",
  includes: "Ticket", reward_date: '2018-12-31')
Reward.create(project_id: 1, amount: 100, reward_subtitle: "2 tickets and a autographed photograph", reward_description: "Everyone in the cast will pose the photo, and the director will autograph it for you",
  includes: "2 tickets + photograph", reward_date: '2018-12-31')
Reward.create(project_id: 1, amount: 1000, reward_subtitle: "Front row seats to the gala premiere", reward_description: "The previous rewards included as well as front row seats to the very first showing",
  includes: "Front row tickets", reward_date: '2018-12-31')
Reward.create(project_id: 1, amount: 5000, reward_subtitle: "Executive Producer", reward_description: "All previous rewards plus you are officially an executive producer credited with helping the show",
  includes: "Official credidation", reward_date: '2018-12-31')
Reward.create(project_id: 1, amount: 10000, reward_subtitle: "Be in the show", reward_description: "Previous rewards plus you get to appear on stage with us",
  includes: "Be a cast member", reward_date: '2018-12-31')

Project.create(
  title: "Park City", creator_id: 2, category: "arts",
  main_image_url: "http://res.cloudinary.com/lopopoa2/image/upload/v1511664090/pexels-photo-417270_pkyh8k.jpg",
  extra_image_url: "http://res.cloudinary.com/lopopoa2/image/upload/v1511664842/pexels-photo-392031_eopxy2.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 150000)

Project.create(
  title: "Modern Logo Design", creator_id: 2, category: "arts",
  main_image_url: "http://res.cloudinary.com/lopopoa2/image/upload/v1511665194/pexels-photo-57690_bg9u2l.jpg",
  extra_image_url: "http://res.cloudinary.com/lopopoa2/image/upload/v1511665191/pexels-photo-436775_pm9ika.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 25000)

Project.create(
  title: "The Benderneers", creator_id: 1, category: "music",
  main_image_url: "http://res.cloudinary.com/lopopoa2/image/upload/v1511665933/abstract-music-rock-bw_sslkmq.jpg",
  extra_image_url: "http://res.cloudinary.com/lopopoa2/image/upload/v1511665932/pexels-photo-257904_f1zpwi.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 10000)

  Reward.create(project_id: 4, amount: 1, reward_subtitle: "The mighty dollar", reward_description: "A dollar a day makes the pain go away",
    includes: "Thank you!", reward_date: '2018-05-24')
  Reward.create(project_id: 4, amount: 5, reward_subtitle: "Digital Song Download", reward_description: "A digital download of whichever song you prefer",
    includes: "digital download", reward_date: '2018-05-24')
  Reward.create(project_id: 4, amount: 20, reward_subtitle: "Digital Album Download", reward_description: "A digital download of our whole album, bonus songs included",
    includes: "digital download", reward_date: '2018-05-24')
  Reward.create(project_id: 4, amount: 100, reward_subtitle: "Digital + Signed Physical", reward_description: "Everyone in the band will autograph your copy for you",
    includes: "digital download + physical copy", reward_date: '2018-10-21')
  Reward.create(project_id: 4, amount: 1000, reward_subtitle: "Tour tickets", reward_description: "Get a ticket for every show in our tour of the US for you to attend or give away as you please",
    includes: "Tickets for every show", reward_date: '2018-10-21')
  Reward.create(project_id: 4, amount: 5000, reward_subtitle: "Can you sing?", reward_description: "How good of a voice do you have? We'd love to have you as a background singer",
    includes: "Official credidation", reward_date: '2018-10-21')
  Reward.create(project_id: 4, amount: 10000, reward_subtitle: "Tour with us", reward_description: "All previous rewards + Travel with us on our tour of the US. Hang with us backstage at every gig",
    includes: "Be one of The Benderneers", reward_date: '2018-10-21')



Project.create(
  title: "DJ Octopus Head", creator_id: 2, category: "music",
  main_image_url: "http://res.cloudinary.com/lopopoa2/image/upload/v1512004549/turntable-top-view-audio-equipment-159376_pik7cy.jpg",
  extra_image_url: "http://res.cloudinary.com/lopopoa2/image/upload/v1512004684/pexels-photo-332688_ozdol7.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 390000)

Project.create(
  title: "DJ Octopus Head", creator_id: 2, category: "music",
  main_image_url: "",
  extra_image_url: "",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 390000)










Project.create(
  title: "DJ Octopus Head", creator_id: 2, category: "music",
  main_image_url: "",
  extra_image_url: "",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 390000)






















































  #
