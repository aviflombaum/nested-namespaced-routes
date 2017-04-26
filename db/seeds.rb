# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dogs = Album.create(:name => "Dogs")
cats = Album.create(:name => "Cats")
unicorns = Album.create(:name => "Unicorns")

unicorn_urls = [
  "https://s-media-cache-ak0.pinimg.com/736x/ff/2e/54/ff2e54f2ca5c09a877fb04d84bc562a4.jpg",
  "https://s-media-cache-ak0.pinimg.com/originals/ea/14/8e/ea148eaaa3cfbf840c46e364776ce8ca.jpg",
  "http://akns-images.eonline.com/eol_images/Entire_Site/2016229/rs_600x600-160329123233-600-Lisa-Frank-Unicorn.jm.32916.jpg"
]

dog_urls = [
  "http://iheartdogs.com/wp-content/uploads/2015/01/Screenshot-2015-01-17-16.15.29.png",
  "https://i.ytimg.com/vi/iWfHAEpQ5Oc/maxresdefault.jpg",
  "https://pbs.twimg.com/profile_images/411995497096695808/Pr8TCx9u.jpeg"
]

cat_urls = [
  "http://www.rantchic.com/wp-content/uploads/2014/10/cover20.jpg",
  "http://stuffpoint.com/cats/image/453219-cats-adorable-cat.jpg",
  "http://images.boomsbeat.com/data/images/full/196632/adorable-cats-jpg.jpg"
]

dog_urls.each do |url|
  dogs.pictures.create(:url => url)
end

cat_urls.each do |url|
  cats.pictures.create(:url => url)
end

unicorn_urls.each do |url|
  unicorns.pictures.create(:url => url)
end