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

User.create(username: "demoUser", email: "demoUser@demo.com", password: "123456")
User.create(username: "max", email: "max@max.com", password: "123456")
User.create(username: "kubo", email: "kubo@kubo.com", password: "123456")

Project.create(
  title: "Classical Russian Ballet", creator_id: 1, category: "arts",
  main_image_url: "http://res.cloudinary.com/lopopoa2/image/upload/v1511664088/pexels-photo-209948_sziq5i.jpg",
  extra_image_url: "http://res.cloudinary.com/lopopoa2/image/upload/v1511664536/ballet-production-performance-don-quixote-45258_rl9ko2.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 50000, money_raised: 0, backers: 0)

Project.create(
  title: "Park City", creator_id: 2, category: "arts",
  main_image_url: "http://res.cloudinary.com/lopopoa2/image/upload/v1511664090/pexels-photo-417270_pkyh8k.jpg",
  extra_image_url: "http://res.cloudinary.com/lopopoa2/image/upload/v1511664842/pexels-photo-392031_eopxy2.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 150000, money_raised: 0, backers: 0)

Project.create(
  title: "Modern Logo Design", creator_id: 3, category: "arts",
  main_image_url: "http://res.cloudinary.com/lopopoa2/image/upload/v1511665194/pexels-photo-57690_bg9u2l.jpg",
  extra_image_url: "http://res.cloudinary.com/lopopoa2/image/upload/v1511665191/pexels-photo-436775_pm9ika.jpg",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel commodo turpis. Vestibulum rutrum porttitor lacus, at interdum arcu feugiat vitae. Duis aliquam tortor dignissim facilisis malesuada. Donec et venenatis ligula, at scelerisque ex. Nulla ligula mauris, tincidunt at tellus in, accumsan pharetra est. Vestibulum placerat sed quam vitae rutrum. Mauris quis viverra libero. Sed rhoncus turpis vitae metus egestas commodo. Sed consectetur at elit ac laoreet. Suspendisse molestie sapien tristique augue sollicitudin, vitae semper enim tincidunt. Quisque accumsan diam tempus lorem egestas, venenatis dapibus neque lobortis. In pulvinar fringilla ex quis gravida. Praesent lacus lectus, consequat et justo non, ultricies ultrices massa. Maecenas venenatis faucibus dui ut mattis.",
  goal: 25000, money_raised: 0, backers: 0)
