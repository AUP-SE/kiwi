Feature: User logs in and immediately sees a list of all enrolled courses
  As an educated person
  So that I can see all my courses
  I want to show all of my courses on the main page
  
Scenario: Show courses 
  Given I have courses 
  And I am on the courses index page
  Then I should see "Course Title"
  And I should sea "Software Engineering"