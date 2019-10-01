# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(title: "Topic #{topic}")
end
puts ("Seeded 3 data in Blogs table")

#populate blogs table
10.times do |blog|
    Blog.create!(
        title: "Blog No #{blog}",
        body: "Want to learn blog-writing ",
        topic_id: Topic.last.id
    )
end
puts ("Seeded 10 data in Blogs table")

6.times do |portfolio|
    Portfolio.create!(
        title: "Ruby on Rails",
        subtitle: "Sub Portfolio No #{portfolio}",
        body: "Portfolio Body is awesome",
        main_image: "https://via.placeholder.com/350x350",
        thumb_image: "https://via.placeholder.com/150x150"
    )
end
3.times do |portfolio|
    Portfolio.create!(
        title: "Angular",
        subtitle: "Sub Portfolio No #{portfolio}",
        body: "Portfolio Body is awesome",
        main_image: "https://via.placeholder.com/350x350",
        thumb_image: "https://via.placeholder.com/150x150"
    )
end
puts ("Seeded 9 data in Portfolio table")

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end
puts ("Seeded 3 data in Technologies table")
