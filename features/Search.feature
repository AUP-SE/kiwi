Feature: Student can add courses by searching for it in The Course Database (TCDb) 
  As a Student
  So that I can search for classes to enroll
  I want to see  courses that match my search

Background: Search course
  Given I am on the courses index page 
  Then I should see "Search Course"
  
Scenario: Try to Search for an existent Course (happy path)
  When I fill in "Search Course" with "CS3050"
  And I press "Search"
  Then I should be on the courses search page
  And I should see "CS3050"
 
Scenario: Try to Search for a nonexistent Course (sad path)
 When I fill in "Search Course" with "Courses That Does Not Exist"	
  And I press "Search"
  Then I should be on the homepage
  And I should see "'Courses That Does Not Exist' was not found"	
