# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
require 'faker'

puts 'Creating 10 fake tasks...'
10.times do
  task = Task.new(
    name:    Faker::Food.dish,
    description: Faker::Food.ingredient,
    deadline: Faker::Food.spice
  )
  task.save!
end
puts 'Finished!'
