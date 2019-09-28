# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#populate blogs table
10.times do |blog|
    Blog.create!(
        title: "Blog No #{blog}",
        body: "Want to learn blog-writing "
    )
end
puts ("Seeded data in Blogs table")

9.times do |portfolio|
    Portfolio.create!(
        title: "Portfolio No #{portfolio}",
        subtitle: "Sub Portfolio No #{portfolio}",
        body: "Portfolio Body is awesome",
        main_image: "https://via.placeholder.com/350x350",
        thumb_image: "https://via.placeholder.com/150x150"
    )
end
puts ("Seeded data in Portfolio table")