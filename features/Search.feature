Feature: Student can add courses by searching for it in The Course Database (TCDb) 
  As a Student
  So that I can search for classes to enroll
  I want to see  courses that match my search

Scenario: Search course
  
  Given I am on the courselist create new page
  Then I should see "Search TCDb for a course"
  When I fill in "Search Course" with "Movie That Does Not Exist"	
  And I press "Search TCDb"
  Then I should be on the StudentCourses create new page
  And I should see "'Courses That Does Not Exist' was not found in TCDb."	
