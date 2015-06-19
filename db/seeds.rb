Profile.destroy_all
Story.destroy_all
Category.destroy_all

profiles = [
  {
    name: "Smokey the Bear",
    age: 71,
    occupation: "Fire Protection Engineer",
    image: "http://upload.wikimedia.org/wikipedia/commons/6/62/SmokeyTheBearHeadshot.GIF"
  },
  {
    name: "Michelle Obama",
    age: 51,
    occupation: "Government",
    image: "http://myhero.com/images/guest/g266634/hero92090/michelle-obama-thumb.jpg"
  },
  {
    name: "Snoopy",
    age: 21,
    occupation: "Pilot",
    image: "http://www.picgifs.com/clip-art/cartoons/snoopy/clip-art-snoopy-124159.jpg"
  },
  {
    name: "Frodo Baggins",
    age: 33,
    occupation: "Courier",
    image: "http://fc04.deviantart.net/fs70/f/2014/282/3/6/frodo_baggins_x_reader__games_we_play__au___by_case2000-d80790n.jpg"
  },
  {
    name: "Lucy Ricardo",
    age: 37,
    occupation: "Hijinks",
    image: "http://vignette1.wikia.nocookie.net/p__/images/a/ac/Lucy_Ricardo.png/revision/latest?cb=20150305142341&path-prefix=protagonist"
  }
]

profiles.each do |profile_hash|
  Profile.create!(profile_hash)
end

categories = [
  {
    name: "Volunteering"
  },
  {
    name: "Interpersonal Relationships"
  },
  {
    name: "Vocational Training"
  },
  {
    name: "Cultural Exposure"
  },
  {
    name: "Other"
  }
]

categories.each do |category_hash|
  Category.create!(category_hash)
end

stories = [
  {
    category: "Volunteering",
    heading: "Helping Nature",
    body: "Created PSAs to encourage park visitors to take personal responsibility for their actions",
    lesson: "Communication, PR",
    photo_url: "http://www.adlibbing.org/wp-content/uploads/2014/08/smokey-cub.jpg",
    author: "Smokey the Bear"
  },
  {
    category: "Other",
    heading: "Planting a Garden",
    body: "Planted a garden with local kids to encourage healthy eating and encourage collaboration",
    lesson: "Developing community, health",
    photo_url:  "http://www4.pictures.zimbio.com/gi/First+Lady+Michelle+Obama+Holds+Food+Nutrition+IjfGZDCAEUtl.jpg",
    author: "Michelle Obama"
  },
  {
    category: "Vocational Training",
    heading: "Flight School",
    body: "Dealing with frustration and adversity while pursuing the Red Baron",
    lesson: "Determination, focus",
    photo_url:  "http://www.morningtoast.com/wordpress/wp-content/uploads//2010/06/snoopypilotbw8.jpg",
    author: "Snoopy"
  },
  {
    category: "Cultural Exposure",
    heading: "Traveled with a Diverse Group",
    body: "Took a journey through a variety of lands both with and encountering a variety of ethnicities",
    lesson: "Race relations, mediation, endurance",
    photo_url: "http://img3.wikia.nocookie.net/__cb20130619032635/lotr/images/c/c5/Frodo_Baggins_and_Sam_Travel.png",
    author: "Frodo Baggins"
  },
  {
    category: "Interpersonal Relationships",
    heading: "Working with an idol",
    body: "Got the chance to do a miming exercise with Harpo Marx!",
    lesson: "How to be more intuitive",
    photo_url: "https://nypdecider.files.wordpress.com/2014/08/i-love-lucy-lucy-meets-harpo-marx.png?w=642&h=428&crop=1",
    author: "Lucy Ricardo"
  },
]

stories.each do |story_hash|
  Story.create!({
    category: Category.find_by(name: story_hash[:category]),
    heading: story_hash[:heading],
    body: story_hash[:body],
    lesson: story_hash[:lesson],
    photo_url: story_hash[:photo_url],
    profile: Profile.find_by(name: story_hash[:author])
  })
end
