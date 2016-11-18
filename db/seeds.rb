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
somePeople = [
  {:name => 'Kiana', :email => 'pianoMermaid@gmail.com', :major => 'microbiology', :CourseID1 => 2, :CourseID2 => 1, :CourseID3 => 3},
  {:name => 'Bruh', :email => 'alisse@gmail.com', :major => 'IR', :CourseID1 => 2, :CourseID2 => 1, :CourseID3 => 3},
  {:name => 'Liam', :email => 'whoknows@hotmail.com', :major => 'Engineering', :CourseID1 => 2, :CourseID2 => 1, :CourseID3 => 3},
  {:name => "Luis", :email => 'soyfriki@gmail.com', :major => 'inglés', :CourseID1 =>7}]

somePeople.each do |person|
  User.create!(person)
end

someCourses = [
  {:title => 'Differential Equations', :professor => 'Ruth'},
  {:title => 'Japanese', :professor => 'Yuki'}]

someCourses.each do |course|
  Course.create!(course)
end
