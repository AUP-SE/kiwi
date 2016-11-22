Feature: User can email a User

As a User 
    so that a user with status professor can email a user with status student
  
Scenario: Try to email a User
    
    Given I am on the kiwi home page and my role is professor
    Then I should see "classes"
    When I press "select course" button pertaining to a course
    Then I should see "Students"
    When I press "Email" button pertaining to a student
    Then I should be on the email page
