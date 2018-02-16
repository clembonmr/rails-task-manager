# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Deleting all tasks"
Task.destroy_all
puts "Creating 10 tasks"
36.times do
  tasks = Task.new(title: Faker::Hipster.sentence, details: Faker::ChuckNorris.fact, completed: [true, false].sample)
  if tasks.save
    puts tasks.title + " created!"
  end
end

puts "#{Task.count} tasks created!"
