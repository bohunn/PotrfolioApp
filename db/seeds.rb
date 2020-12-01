# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |blog|
  Blog.create!(
    title: "Test Blog #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis magna non leo mattis efficitur. Proin ut justo efficitur, volutpat velit ac, elementum ligula. Nam aliquet sit amet turpis nec lacinia. Pellentesque et aliquam metus, ut tempor ligula. Curabitur lacinia fringilla volutpat. Praesent ac posuere dui. Fusce elementum lorem in massa suscipit suscipit.
Vivamus rhoncus lectus non libero aliquam scelerisque. Donec sit amet lacus iaculis, dapibus massa quis, blandit velit. Suspendisse magna arcu, aliquam et erat a, malesuada consequat dolor. Curabitur eget libero vehicula felis suscipit vehicula. Nullam imperdiet scelerisque erat. Proin a viverra sem. In nec accumsan justo. Integer."
  )
end

puts "Craeted 10 new blogs"

5.times do |skill|
  Skill.create!(title: "Skill #{skill}",
                percent_utilized: rand(100),
                created_at: 2.days.ago,
                updated_at: 1.day.ago)
end
puts "Craeted 5 new Skills"

15.times do |portfolio|
  Portfolio.create!(title: "My Portfolio #{portfolio}",
                    subtitle: "Example Subtitle #{portfolio}",
                    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut lobortis magna non leo mattis efficitur. Proin ut justo efficitur, volutpat velit ac, elementum ligula. Nam aliquet sit amet turpis nec lacinia. Pellentesque et aliquam metus, ut tempor ligula. Curabitur lacinia fringilla volutpat. Praesent ac posuere dui. Fusce elementum lorem in massa suscipit suscipit.
Vivamus rhoncus lectus non libero aliquam scelerisque. Donec sit amet lacus iaculis, dapibus massa quis, blandit velit. Suspendisse magna arcu, aliquam et erat a, malesuada consequat dolor. Curabitur eget libero vehicula felis suscipit vehicula. Nullam imperdiet scelerisque erat. Proin a viverra sem. In nec accumsan justo. Integer.",
                    main_image: "http://placehold.it/600x400",
                    thumb_image: "http://placehold.it/300x150"

  )
end

puts "Craeted 15 new portfolios"