Feature: Student can add courses by searching for it in The Course Database (TCDb) 
  As a Student
  So that I can search for classes to enroll
  I want to see  courses that match my search

Background: Search course
  Given I am on the courselist create new page
  Then I should see "Search TCDb for a course"
  
Scenario: Try to add an existent Course (happy path)
  When I fill in "Search Courses" with "CS2010"
  And I press "Search TCDb"
 Then I should see the the Course return
 And I should see "CS2010 has seats"
 
Scenario: Try to add nonexistent Course (sad path)
 When I fill in "Search Course" with "Course That Does Not Exist"	
  And I press "Search TCDb"
  Then I should be on the StudentCourses create new page
  And I should see "'Courses That Does Not Exist' was not found in TCDb."	
