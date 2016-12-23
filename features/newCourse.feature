Feature: Create new course
  As a Professor
  So students can access help sessions and declare absenses 
  I want to create a course on Kiwi
  


  
Scenario: Professor tries to create course with insufficient information (sad path)
  Given I am signed in as a Professor
  Given I am on the courses page
  Then I should see "create new Kiwi course" 
  When I follow "create new Kiwi course"
  Then I should be on "Courses New page"
  
  When I press "Create"
  Then I should see "Please fill in all fields."
  
Scenario: Student tries to create course  (sad path)
  Given I am signed in as a Student
  Given I am on the courses page
  Then I should not see "create new Kiwi course"
  And I should see "request new Kiwi course"

  
Scenario: Professor creates new course (happy path)
  Given I am signed in as a Professor
  Given I am on the courses page
  Then I should see "create new Kiwi course" 
  When I follow "create new Kiwi course"
  Then I should be on "Courses New page"
  
  And I fill in "Title" with "Topology"
  And I select "Spring 2017" from "Semester"
  And I fill in "Course Code" with "MA4020"
  When I press "Create"
  Then I should see "Topology was successfully created!"
  And I should be on the courses page
  
  
  