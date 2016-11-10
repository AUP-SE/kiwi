# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

courses = [ {:title => 'Software Engineering', :coursecode => 'CS3050', :professor => 'Tomer Libal', :semester => 'Fall 2016'}, 
            {:title => 'Languages & Data Structures', :coursecode => 'CS2071', :professor => 'Georgi Stoganov', :semester => 'Fall 2016'}
    ]

courses.each do |course|
    Course.create!(course)
end