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
  backers: 0,
  title: "Classical Russian Ballet", creator_id: 2, category: "arts",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1511664088/pexels-photo-209948_sziq5i.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1511664536/ballet-production-performance-don-quixote-45258_rl9ko2.jpg",
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
  backers: 0, money_raised: 0,
  title: "Park City", creator_id: 10, category: "arts",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1511664090/pexels-photo-417270_pkyh8k.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1511664842/pexels-photo-392031_eopxy2.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 150000)

Project.create(
  backers: 0, money_raised: 0,
  title: "Modern Logo Design", creator_id: 6, category: "arts",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1511665194/pexels-photo-57690_bg9u2l.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1511665191/pexels-photo-436775_pm9ika.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 25000)

Project.create(
  backers: 0, money_raised: 0,
  title: "The Benderneers", creator_id: 2, category: "music",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1511665933/abstract-music-rock-bw_sslkmq.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1511665932/pexels-photo-257904_f1zpwi.jpg",
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
  backers: 0, money_raised: 0,
  title: "DJ Octopus Head", creator_id: 3, category: "music",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512004549/turntable-top-view-audio-equipment-159376_pik7cy.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512004684/pexels-photo-332688_ozdol7.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 39000)

Project.create(
  backers: 0, money_raised: 0,
  title: "Jack Johnsson", creator_id: 4, category: "music",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512004858/pexels-photo-375893_o6imuj.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512004982/pexels-photo-92080_rpv6bf.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 20000)

Project.create(
  backers: 0, money_raised: 0,
  title: "Lynda and the no-go terrible boy", creator_id: 5, category: "comics",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512005130/pexels-photo-89625_ilevyx.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512005202/pexels-photo_xc9zkn.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 10000)

Project.create(
  backers: 0, money_raised: 0,
  title: "Baga Comics", creator_id: 6, category: "comics",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512005344/pexels-photo-191295_blypll.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512005441/pexels-photo-290711_zpku2o.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 7000)

Project.create(
  backers: 0, money_raised: 0,
  title: "Joey and the Velvet", creator_id: 7, category: "film",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512005513/pexels-photo-66134_porozd.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512005588/pexels-photo-243747_zdfifm.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 195000)

Project.create(
  backers: 0, money_raised: 0,
  title: "10000 Years Ago", creator_id: 8, category: "film",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512005660/pexels-photo-275977_xucuzt.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512005805/pexels-photo-276015_ngqzkr.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 95000)

Project.create(
  backers: 0, money_raised: 0,
  title: "Garden in the City", creator_id: 7, category: "food",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512006145/pexels-photo-533360_vzu9ve.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512006290/pexels-photo-169523_ypwcls.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 40000)

Project.create(
  backers: 0, money_raised: 0,
  title: "Bring Quality Back To Beef", creator_id: 6, category: "food",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512006522/pexels-photo-65175_lpuiup.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512006373/cow-pasture-animal-almabtrieb_d5wo20.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 12000)


Project.create(
  backers: 0, money_raised: 0,
  title: "Slow-Mo Photography", creator_id: 5, category: "photography",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512006766/pexels-photo-267961_t0qhcl.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512006604/art-broken-explosion-glass_hkvs4x.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 5000)

Project.create(
  backers: 0, money_raised: 0,
  title: "Pictures from the sky", creator_id: 4, category: "photography",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512006896/pexels-photo-336232_kqlu9j.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512006964/pexels-photo-417101_g7v1cw.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 11000)

Project.create(
  backers: 0, money_raised: 0,
  title: "Everywhere VR", creator_id: 3, category: "games",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512007200/pexels-photo-123335_hu6vj4.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512007147/pexels-photo-276452_w8zfiv.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 665000)

Project.create(
  backers: 0, money_raised: 0,
  title: "Game Bar", creator_id: 2, category: "games",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512007287/arcade-ps4-fun-playing-74209_iwczkf.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512007353/pexels-photo-371924_yfitqa.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 335000)

Project.create(
  backers: 0, money_raised: 0,
  title: "Personal Wall-E's", creator_id: 1, category: "technology",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512007457/pexels-photo-247932_jlpqou.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512007592/mars-mars-rover-space-travel-robot-73910_ziqtan.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 4500000)

Project.create(
  backers: 0, money_raised: 0,
  title: "Ancient Gold Mine", creator_id: 2, category: "technology",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512007681/pexels-photo-414936_h1zu61.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512007798/pexels-photo-532229_vbgfun.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 6600000)

Project.create(
  backers: 0, money_raised: 0,
  title: "Second Novel: 'Lovers in Death'", creator_id: 4, category: "publishing",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512007929/pexels-photo-374697_ghwswz.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512008001/pexels-photo-206434_vezcn0.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 3000)

Project.create(
  backers: 0, money_raised: 0,
  title: "A Clear Mind", creator_id: 9, category: "publishing",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512008103/pexels-photo-256472_iacjyz.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512008159/hands-hand-book-reading_sttjqp.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 2000)














  #
