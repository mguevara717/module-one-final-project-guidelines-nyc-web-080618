require 'pry'
require 'faker'
# require '../app/models/student.rb'

puts "naming students"
Student.create(name: Faker::HeyArnold.character, school_id: rand(1..3))
Student.create(name: Faker::HeyArnold.character, school_id: rand(1..3))
Student.create(name: Faker::HeyArnold.character, school_id: rand(1..3))

puts "done with naming students"


puts "naming teachers"
Teacher.create(name: Faker::GreekPhilosophers.name, school_id: rand(1..School.count))
Teacher.create(name: Faker::GreekPhilosophers.name, school_id: rand(1..School.count))
Teacher.create(name: Faker::GreekPhilosophers.name, school_id: rand(1..School.count))
puts "done with naming teachers"


puts "feelings with emoji"
Feeling.create(emoji: "=D", score: 5)
Feeling.create(emoji: ":-$", score: 2)
Feeling.create(emoji: ">:(", score: 0)
Feeling.create(emoji: ":'(", score: 2)
puts "done with feelings"