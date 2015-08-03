Profile.destroy_all
Story.destroy_all
Category.destroy_all

profiles = [
  {
    name: "Roger",
    age: 71,
    occupation: "Fire Protection Engineer",
    image: "http://leader-call.com/wp-content/uploads/2015/07/STORAGE-FACILITY-FIRE.jpg"
  },
  {
    name: "Michelle P.",
    age: 51,
    occupation: "Government",
    image: "http://www.bestvalueschools.com/wp-content/uploads/2014/04/green-animals-topiary-garden.jpg"
  },
  {
    name: "Ace of the Sky",
    age: 21,
    occupation: "Pilot",
    image: "http://www.airforce-technology.com/projects/f-5tiger2/images/1-f5-tiger-fighter-jet.jpg"
  },
  {
    name: "Fred Baggins",
    age: 33,
    occupation: "Courier",
    image: "http://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/articles/health_tools/is_my_cat_normal_slideshow/photolibrary_rf_photo_of_cat_eating_red_yarn.jpg"
  },
  {
    name: "Lucy Sun",
    age: 37,
    occupation: "Translator",
    image: "http://www.blogos.org/thetakeaway/images/150216-lucy-review.jpg"
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
    author: "Roger"
  },
  {
    category: "Other",
    heading: "Planting a Garden",
    body: "Planted a garden with local kids to encourage healthy eating and encourage collaboration",
    lesson: "Developing community, health",
    photo_url:  "http://192.185.156.123/~sagelan/wp-content/uploads/2014/05/community-garden-kids-plant-590jn071410-1279147997.jpg",
    author: "Michelle P."
  },
  {
    category: "Vocational Training",
    heading: "Flight School",
    body: "Dealing with frustration and adversity while pursuing the Red Baron",
    lesson: "Determination, focus",
    photo_url:  "",
    author: "Ace of the Sky"
  },
  {
    category: "Cultural Exposure",
    heading: "Traveled with a Diverse Group",
    body: "Took a journey through a variety of lands both with and encountering a variety of ethnicities",
    lesson: "Race relations, mediation, endurance",
    photo_url: "",
    author: "Fred Baggins"
  },
  {
    category: "Interpersonal Relationships",
    heading: "Working with an idol",
    body: "Got the chance to do improv with an idol",
    lesson: "How to be more intuitive",
    photo_url: "",
    author: "Lucy Sun"
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
