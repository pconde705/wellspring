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
  backers: 80, money_raised: 13420,
  title: "Classical Russian Ballet", creator_id: 2, category: "arts",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1511664088/pexels-photo-209948_sziq5i.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1511664536/ballet-production-performance-don-quixote-45258_rl9ko2.jpg",
  description: "We are three sisters who are trying to bring back ballet that was taught to us when we were kids studying abroad in St, PetersBurg.
  Unlike contemporary ballet which is largely fused with modern dance our style aims to showcase a more traditional lost art of ballet practiced
  only in elite schools across in Russia. With your help we can hopefully put on a show that not only features ourselves, but train a group of professional ballet
  dancers and aim for a showcase of young and old dancers who are passionate for dancing and want to learn the finer art of ballet.",
  goal: 50000)

Reward.create(reward_backers: 0, project_id: 1, amount: 1, reward_subtitle: "Anything helps", reward_description: "Even the smallest amount helps us",
  includes: "Thank you!", reward_date: '2018-01-31')
Reward.create(reward_backers: 0, project_id: 1, amount: 10, reward_subtitle: "Anything helps plus", reward_description: "Even the second smallest amount helps us",
  includes: "Thank you!!!", reward_date: '2018-01-31')
Reward.create(reward_backers: 0, project_id: 1, amount: 50, reward_subtitle: "Ticket to the show", reward_description: "You will get one ticket to the show for the first available date that isn't sold out",
  includes: "Ticket", reward_date: '2018-12-31')
Reward.create(reward_backers: 0, project_id: 1, amount: 100, reward_subtitle: "2 tickets and a autographed photograph", reward_description: "Everyone in the cast will pose the photo, and the director will autograph it for you",
  includes: "2 tickets + photograph", reward_date: '2018-12-31')
Reward.create(reward_backers: 0, project_id: 1, amount: 1000, reward_subtitle: "Front row seats to the gala premiere", reward_description: "The previous rewards included as well as front row seats to the very first showing",
  includes: "Front row tickets", reward_date: '2018-12-31')
Reward.create(reward_backers: 0, project_id: 1, amount: 5000, reward_subtitle: "Executive Producer", reward_description: "All previous rewards plus you are officially an executive producer credited with helping the show",
  includes: "Official credidation", reward_date: '2018-12-31')
Reward.create(reward_backers: 0, project_id: 1, amount: 10000, reward_subtitle: "Be in the show", reward_description: "Previous rewards plus you get to appear on stage with us",
  includes: "Be a cast member", reward_date: '2018-12-31')

Project.create(
  backers: 110, money_raised: 65440,
  title: "Park City", creator_id: 10, category: "arts",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1511664090/pexels-photo-417270_pkyh8k.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1511664842/pexels-photo-392031_eopxy2.jpg",
  description: "Welcome to Park City, or at least welcome to what will hopefully be the start of Park City, a child like city-wide dream construction.
  Imagine walking down the streets of a dream where every building is designed by a childs imagination, where color and wild shapes can be seen everywhere.
  Think of it as an amusement park in the city accessible by anyone. We are non-profit, in other words we hope to create this for the elation of others, therefore we need your help.
  With your funding we hope to make our own dreams as children a reality, the more you donate the wider we can spread the construction space. All the permits are guaranteed and we have approval
  from the mayors office to get started, all thats left is you guys. We look forward working with you all!",
  goal: 150000)

Reward.create(reward_backers: 0, project_id: 2, amount: 20000, reward_subtitle: "Aid In Design", reward_description: "Do you dream? We know you do, we will turn your dream into living space with this reward",
    includes: "A building!", reward_date: '2018-01-31')
Reward.create(reward_backers: 0, project_id: 2, amount: 50000, reward_subtitle: "Architect credit", reward_description: "You will be credited as an architect of this passion project + previous rewards",
    includes: "A building!", reward_date: '2018-01-31')

Project.create(
  backers: 33, money_raised: 7654,
  title: "Modern Logo Design", creator_id: 6, category: "arts",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1511665194/pexels-photo-57690_bg9u2l.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1511665191/pexels-photo-436775_pm9ika.jpg",
  description: "How many online logo design do you see these days? Probably too many with watermarks I bet, but whatever happened to good old fashioned pen and paper, well with me it went nowhere.
  I'm taking photoshop and chucking it out the window for an artists touch. I am creating business cards, greeting cards, and manufactured design that personally drawn by me. Who am I you may ask?
  Well my portfolio can be seen on my webpage, and my work is currently being displayed everywhere on the recent political election. Shepard Fairey did not make it this time it seems, jk, we're friends.
  Essentially with your help I hope to reach an audience of a wider scale with a more varied portfolio, who knows maybe an international break might happen, but for now only US customers are available for the rewards.",
  goal: 25000)

  Reward.create(reward_backers: 0, project_id: 3, amount: 1000, reward_subtitle: "Choose a color scheme", reward_description: "I'll create a design around a color scheme of your choosing",
      includes: "Art Canvas", reward_date: '2018-07-21')
  Reward.create(reward_backers: 0, project_id: 3, amount: 5000, reward_subtitle: "Be a Model", reward_description: "I will use your face to create a masterpiece",
      includes: "100 Business Cards (my design)", reward_date: '2018-07-21')

Project.create(
  backers: 65, money_raised: 2340,
  title: "The Benderneers", creator_id: 2, category: "music",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1511665933/abstract-music-rock-bw_sslkmq.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1511665932/pexels-photo-257904_f1zpwi.jpg",
  description: "Are you into folk music with a southern country touch with voices that come from blues and instruments used primarily in elctro rock, well then boy do we have the band for you. But in all
  seriousness, we truly believe are sound is pretty unique. Still don't believe us, simply listen to our released album, its on spotify, go ahead we'll wait.... You back yet? Great, surprised weren't you?
  I told you we are unique, but with that comes some consequences of course, mass appeal being one of them, so we are turning to crowdfunding instead. Let's hope that we are right in believing in you all.
  We are trusting our fans, both new and old to support us as we make the journey to complete indie. Your funds will not only help us eat, but will pay for studio rental and mastering. This is our chance to take the
  world by storm again.",
  goal: 10000)

  Reward.create(reward_backers: 0, project_id: 4, amount: 1, reward_subtitle: "The mighty dollar", reward_description: "A dollar a day makes the pain go away",
    includes: "Thank you!", reward_date: '2018-05-24')
  Reward.create(reward_backers: 0, project_id: 4, amount: 5, reward_subtitle: "Digital Song Download", reward_description: "A digital download of whichever song you prefer",
    includes: "digital download", reward_date: '2018-05-24')
  Reward.create(reward_backers: 0, project_id: 4, amount: 20, reward_subtitle: "Digital Album Download", reward_description: "A digital download of our whole album, bonus songs included",
    includes: "digital download", reward_date: '2018-05-24')
  Reward.create(reward_backers: 0, project_id: 4, amount: 100, reward_subtitle: "Digital + Signed Physical", reward_description: "Everyone in the band will autograph your copy for you",
    includes: "digital download + physical copy", reward_date: '2018-10-21')
  Reward.create(reward_backers: 0, project_id: 4, amount: 1000, reward_subtitle: "Tour tickets", reward_description: "Get a ticket for every show in our tour of the US for you to attend or give away as you please",
    includes: "Tickets for every show", reward_date: '2018-10-21')
  Reward.create(reward_backers: 0, project_id: 4, amount: 5000, reward_subtitle: "Can you sing?", reward_description: "How good of a voice do you have? We'd love to have you as a background singer",
    includes: "Official credidation", reward_date: '2018-10-21')
  Reward.create(reward_backers: 0, project_id: 4, amount: 10000, reward_subtitle: "Tour with us", reward_description: "All previous rewards + Travel with us on our tour of the US. Hang with us backstage at every gig",
    includes: "Be one of The Benderneers", reward_date: '2018-10-21')



Project.create(
  backers: 6, money_raised: 430,
  title: "DJ Octopus Head", creator_id: 3, category: "music",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512004549/turntable-top-view-audio-equipment-159376_pik7cy.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512004684/pexels-photo-332688_ozdol7.jpg",
  description: "Does anyone dare challenge the Octopus. DJ Octopus Head is back!! The craziest mofo in the acid house scene. Anyone who attends his raves knows Steve Aoki or Dj Bl3nd ain't got nothing on the Octopus!
  The Octopus believes in his people so much that he has decided to lobby his latest efforts to take over the world with his followers. Now you can support the Octopus which means supporting yourself for the mad man in music
  to continue touring the world and hopefully one day the universe in delivering mind altering music one simply cannot imagine or hallucinate. The Head is the reality, The Octopus will be your life, and you know you want join!
  Depending on how fine you are the rewards will allow you to dance on stange the mighty squid, as he only believes in natural beauty! Come one, come all, and if we get over 10000% of the asked amount DJ Octopus Head will do a free show!",
  goal: 39000)

  Reward.create(reward_backers: 0, project_id: 5, amount: 1000, reward_subtitle: "Be A Dancer", reward_description: "You can dance for the Octopus",
      includes: "Your body", reward_date: '2018-07-21')
  Reward.create(reward_backers: 0, project_id: 5, amount: 5000, reward_subtitle: "Be a Model", reward_description: "You can pose for the Octopus",
      includes: "Your everything", reward_date: '2018-07-21')

Project.create(
  backers: 387, money_raised: 13900,
  title: "Jack Johnsson", creator_id: 4, category: "music",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512004858/pexels-photo-375893_o6imuj.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512004982/pexels-photo-92080_rpv6bf.jpg",
  description: "I'm bringing a new album with me on my tour. This time I'm going solo, don't get me wrong me and The Velveteers may one day tour again. We are a family and I will love them forever. But this time I felt the need to express
  myself without the help of my friends. This soul-rock record I'm working on will be finished not matter what. But together we could create something amazing, maybe even better than I had envisioned. This is my first time doing this so I
  don't know what the results will be, but I'm willing to bet it all on this. For anyone whose new to my music, I welcome you to check out my soundcloud and simply youtube Jack Johnsson for soulful performances. I used to be the lead guitarist and backup singer to
  The Velveteers where my I wrote most of the lyrics with my partner in crime Xingya our lead singer. I hope to kick of this new adventure with you together.",
  goal: 20000)

  Reward.create(reward_backers: 4, project_id: 6, amount: 100, reward_subtitle: "Signed Album + Photograph", reward_description: "I'll take a selfie for you only",
      includes: "Digital/Physical Album/Photograph", reward_date: '2018-07-11')
  Reward.create(reward_backers: 65, project_id: 6, amount: 500, reward_subtitle: "Concert tickets", reward_description: "10 tickets for use in any show",
      includes: "Tickets", reward_date: '2018-07-11')


Project.create(
  backers: 24, money_raised: 3000,
  title: "Lynda and the no-good terrible boy", creator_id: 5, category: "comics",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512005130/pexels-photo-89625_ilevyx.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512005202/pexels-photo_xc9zkn.jpg",
  description: "Meet Lynda, she's bright, booksmart, and always happy to be alive. Although the next door boy that has taken a liking to Lynda is the complete opposite, and unfortunately for her he goes to the same class as Lynda does. But Lynda
  will take it upon herself to transform this no-good terrible boy into a decent human being. This 5 part-series chronicles the shenanigans that ensue when Lynda and the terrible boy try to make friends, and Lynda's many attempts to try and
  civilize the boy. This childfriendly comic has been a dream of mine for quite some time, and the money is stricly needed for publishing purposes. I will finish the comic and based on how much money we can pull together the wider the audience will be
  able to enjoy Lynda's story. Thanks for visiting and my have happiness and heaven bless upon you all!",
  goal: 10000)

  Reward.create(reward_backers: 4, project_id: 7, amount: 500, reward_subtitle: "All books hardcover", reward_description: "All books in hardcover, signed by yours truly",
      includes: "All 5 books", reward_date: '2018-04-11')
  Reward.create(reward_backers: 75, project_id: 7, amount: 1500, reward_subtitle: "Be a character", reward_description: "I'll make you a character in the story, I'll give you some lines as well",
      includes: "Books + appearance", reward_date: '2018-04-11')

Project.create(
  backers: 11, money_raised: 6114,
  title: "Baga Comics", creator_id: 6, category: "comics",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512005344/pexels-photo-191295_blypll.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512005441/pexels-photo-290711_zpku2o.jpg",
  description: "Baga Comics wants to show you how Indian drawings and art has changed throughout the years. Our studio is based heavily on nostalgia because most of our staff grew up reading the comics based on old Indian fairytales. Now with finding and support
  from you guys we are bringing this ancient Indian tradition of storytelling alive through the power of comics. We are a small staff working around the clock so anything you give us will help support our vision. This will also be your chance to get immersed
  in a differenct culture. We love western comics, Spider-Man, Watchmen are some of our favorites. We think comics is a great medium to get across cultural understandings and teaching of religious myth. Of course our story is meant for you to have fun, so
  don't worry if you're afraid you might not understand some of the references, we provide all the backstory you need for every tale we release. With your support we can make this an ongoing series.",
  goal: 7000)

  Reward.create(reward_backers: 4, project_id: 8, amount: 100, reward_subtitle: "The first 3 books", reward_description: "The first 3 books in the series will be yours",
      includes: "3 books", reward_date: '2018-04-11')
  Reward.create(reward_backers: 11, project_id: 8, amount: 300, reward_subtitle: "Win a Trip", reward_description: "Enter into a chance to win a trup to India, all expenses paid.",
      includes: "A plane ticket", reward_date: '2018-04-11')

Project.create(
  backers: 1120, money_raised: 141124,
  title: "Joey and the Velvet", creator_id: 7, category: "film",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512005513/pexels-photo-66134_porozd.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512005588/pexels-photo-243747_zdfifm.jpg",
  description: "Become an executive producer, and be part of our crew as we film the sequel to the highly praised film Purple Nightmares. Now we have officially cast and rented our locations, but if we've learnt one thing from that project is that accidents
  happen and budgets are easily broken. We turn to WellSpring because we need to supply for that emergency, but that's just the beginning as we hope to shoot in real locations rather than studio shots. This puts more pressure on the crew and if we know we have a working
  budget then reshoots won't become this huge fear. Our headquarters are in LA, but we plan to film in San Diego, Germany, Turkey, and Japan. We hold ourselves to be as ambitious as possible, never fearing the outcome until its happened. We hope you can become part of our crew,
   including visiting the premiere. ",
  goal: 195000)

  Reward.create(reward_backers: 2, project_id: 9, amount: 25000, reward_subtitle: "EP Credit", reward_description: "Get an official credidation and receive tickets to the premiere",
      includes: "Producer title + tickets", reward_date: '2019-04-11')
  Reward.create(reward_backers: 3, project_id: 9, amount: 50000, reward_subtitle: "Be a star", reward_description: "Get a chance to be in the movie",
      includes: "A supporting role", reward_date: '2019-04-11')

Project.create(
  backers: 21, money_raised: 5333,
  title: "10000 Years Ago", creator_id: 8, category: "film",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512005660/pexels-photo-275977_xucuzt.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512005805/pexels-photo-276015_ngqzkr.jpg",
  description: "We're shooting a documentary/feature of how humans used to live, you guessed it, 10000 years ago. Filming primarily outdoors and in unique landscapes that correctly fit the vegetation at the time we combine elements ofa feature film and documentary in order to
  bring you this project. Shooting onsite is not only a tremendous challenge but can be incredibly costly, but we are passionate about this project because for us what features lack when protraying a historical time period is a sense of realism. And what documentaries lack is
  a sense of drama. We combine the two in this mockumentary style two parter that will tell a story, that although may be fiction, is based on what relationships were back then. We can't offer you any starring roles but we would love to interact with you, talk about ideas and
  what makes you so passionate about history, filmmaking and whatever else you want to talk about.",
  goal: 95000)

  Reward.create(reward_backers: 1, project_id: 10, amount: 5000, reward_subtitle: "EP Credit", reward_description: "You made our movie come true, you deserve a mention",
      includes: "Executive Producer title", reward_date: '2019-04-11')
  Reward.create(reward_backers: 0, project_id: 10, amount: 10000, reward_subtitle: "Choose Next Project", reward_description: "Talk to the director, come onboard with us and choose our next project.",
      includes: "Producer Management Rights", reward_date: '2019-04-11')

Project.create(
  backers: 13, money_raised: 5151,
  title: "Garden in the City", creator_id: 7, category: "food",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512006145/pexels-photo-533360_vzu9ve.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512006290/pexels-photo-169523_ypwcls.jpg",
  description: "Love fresh food? Check! Love natural food free from any artificial products? Check! Love to have a farm that operates within walking distance from your city apartment? Check and Check! Welcome to Garden in the city! We are exactly as we sound, a movement to
  make groceries healthy again. We grow, and serve our garden fresh food straight from the earth. What earth you may ask, we're in the midlle of a city? Simple, we import our earth from the countryside just outside. If that sounds tupidly simple its because it is. We are passionate
  about food but often find ourselves at the mercy of grocery stores and there artifical preservatives. Really any product should have no more then 3 ingredients in them as foundation. The very essence of a grocery store requires items to be froez and preserved for days in case customers don't the products.
    We work different, we store nothing to be sold that didn't already sell that day. We maintain fresh where the only ingredient you buy when you shop our produce is the name of the produce itself.",
  goal: 40000)

  Reward.create(reward_backers: 3, project_id: 11, amount: 750, reward_subtitle: "Reserve an item once a week", reward_description: "Choose a produce that we put aside for you, so your freshness is guaranteed",
      includes: "One produce", reward_date: '2019-04-11')
  Reward.create(reward_backers: 1, project_id: 11, amount: 1350, reward_subtitle: "First pick every day", reward_description: "Every day you get to reserve what you want",
      includes: "A produce a day", reward_date: '2019-04-11')

Project.create(
  backers: 1234, money_raised: 11141,
  title: "Bring Quality Back To Beef", creator_id: 6, category: "food",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512006522/pexels-photo-65175_lpuiup.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512006373/cow-pasture-animal-almabtrieb_d5wo20.jpg",
  description: "Although we love the push to veganism and vegetarianism we always have had a love for beef that just wouldn't go away. Beef comes in many forms and shapes, the grass and the area the cow is from matters greatly when it comes to the taste. Wagyu, Angus, Kobe, did you know that if cows drink
  beer it makes them more tender?! So we hate preservatives, and the meat industry is a leading contributor to climate change, so what can be done? Better care for the animals to start with. After that they need proper food and nourishment as well. Then after living a long anhealthy life we provide 100% pain
  free injection and these cows are then served as some of the finest meat you will ever eat. We love our cows, they are not just a product to us, they are our friends who at the end of their journey sacrifice themselves for us. All animals look at other animals and see food or relationship. We see both,
  and we hope that you'll join us in viewing it as non-binary as we do.",
  goal: 12000)

  Reward.create(reward_backers: 1, project_id: 12, amount: 750, reward_subtitle: "Angus for a week", reward_description: "Angus beef for a week",
      includes: "Angus Beef", reward_date: '2019-04-12')
  Reward.create(reward_backers: 3, project_id: 12, amount: 2000, reward_subtitle: "Kobe for a week", reward_description: "Kobe beef for a week",
      includes: "Kobe beef", reward_date: '2019-04-12')

Project.create(
  backers: 0, money_raised: 0,
  title: "Slow-Mo Photography", creator_id: 5, category: "photography",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512006766/pexels-photo-267961_t0qhcl.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512006604/art-broken-explosion-glass_hkvs4x.jpg",
  description: "The pictures speak for themselves, all I can say is we need more of this great and glorious art. Check out my profile for more, and decide if this is for you. The more we raise the more bold situations I will try to deliver with slow motion photography. Right now the bucketlist is: a crashing tidal wave, volcanic eruption,
  gunshots, bomb explosions, and more.",
  goal: 5000)

  Reward.create(reward_backers: 0, project_id: 13, amount: 50, reward_subtitle: "10 pictures", reward_description: "10 pictures of your choice blown up to original size",
      includes: "10 pics", reward_date: '2019-04-13')
  Reward.create(reward_backers: 0, project_id: 13, amount: 200, reward_subtitle: "50 pictures", reward_description: "50 pictures of your choice blwon up to original size.",
      includes: "50 pics", reward_date: '2019-04-13')

Project.create(
  backers: 10, money_raised: 4414,
  title: "Pictures from the sky", creator_id: 4, category: "photography",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512006896/pexels-photo-336232_kqlu9j.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512006964/pexels-photo-417101_g7v1cw.jpg",
  description: "One category thats forgotten slightly is the aerial photograph. At first it was brushed off as a momentary merketing gimmick but now with the advent of drones reaching impossibly specific places that make overhead photography not only a brand new field to work in, but a brand new creative
  output. Our first trip is to areas that human beings cannot even enter: Chernobyl! We send a drone into Chernobyl where humans would die were they to enter, but because of this we can get previously unwitnessed areas that have been geographical secrets till now. We can also lower our drones into caves,
  crevaces, and between mountain clifs. A whole new world of nature phtogoraphy awaits. Imagine how easy it will be to get closeups of dangerous animals now that they no longer can eat you, or places often infested with bugs are now merely models rather than pests. The list continues on and on. With your help
  we want to make this avation dream a reality.",
  goal: 11000)


    Reward.create(reward_backers: 14, project_id: 14, amount: 150, reward_subtitle: "20 pictures", reward_description: "20 pictures of the world",
        includes: "20 pics", reward_date: '2019-04-14')
    Reward.create(reward_backers: 3, project_id: 14, amount: 600, reward_subtitle: "50 pictures", reward_description: "50 pictures of the world",
        includes: "50 pics", reward_date: '2019-04-14')

Project.create(
  backers: 0, money_raised: 0,
  title: "Everywhere VR", creator_id: 3, category: "games",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512007200/pexels-photo-123335_hu6vj4.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512007147/pexels-photo-276452_w8zfiv.jpg",
  description: "",
  goal: 665000)

Project.create(
  backers: 0, money_raised: 0,
  title: "Game Bar", creator_id: 2, category: "games",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512007287/arcade-ps4-fun-playing-74209_iwczkf.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512007353/pexels-photo-371924_yfitqa.jpg",
  description: "",
  goal: 335000)

Project.create(
  backers: 0, money_raised: 0,
  title: "Personal Wall-E's", creator_id: 9, category: "technology",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512007457/pexels-photo-247932_jlpqou.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512007592/mars-mars-rover-space-travel-robot-73910_ziqtan.jpg",
  description: "",
  goal: 4500000)

Project.create(
  backers: 0, money_raised: 0,
  title: "Ancient Gold Mine", creator_id: 2, category: "technology",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512007681/pexels-photo-414936_h1zu61.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512007798/pexels-photo-532229_vbgfun.jpg",
  description: "",
  goal: 6600000)

Project.create(
  backers: 0, money_raised: 0,
  title: "Second Novel: 'Lovers in Death'", creator_id: 4, category: "publishing",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512007929/pexels-photo-374697_ghwswz.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512008001/pexels-photo-206434_vezcn0.jpg",
  description: "",
  goal: 3000)

Project.create(
  backers: 0, money_raised: 0,
  title: "A Clear Mind", creator_id: 9, category: "publishing",
  main_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512008103/pexels-photo-256472_iacjyz.jpg",
  extra_image_url: "https://res.cloudinary.com/lopopoa2/image/upload/v1512008159/hands-hand-book-reading_sttjqp.jpg",
  description: "",
  goal: 2000)














  #
