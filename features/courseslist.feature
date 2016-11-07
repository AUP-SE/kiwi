Feature: User logs in and immediately sees a list of all enrolled courses
  As an educated person
  So that I can see all my courses
  I want to show all of my courses on the main page
  
Scenario: Show courses (happy path)
  Given I am on the Kiwi index page
  Then I should see "List of courses"
  And I should see all courses