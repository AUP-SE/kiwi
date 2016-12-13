Feature: Anonymous person can sign up for an account
As a student/teacher 
I need an account to access this service

Scenario: Create new user (happy path)
    Given I am on the users new page
    Then I should see "Sign Up!"
    And I fill in "Name" with "Fiona Battersby"
    And I fill in "Email" with "fifi@yahoo.com"
    And I select "No" from "Are you a professor?"

    And I fill in "Password" with "I love Xaviera"
    And I fill in "Confirm Password" with "I love Xaviera"
    And I press "Submit"
    And I should see "Welcome Fiona Battersby!"    
    Then I should be on the home page 


Scenario: create new user but passwords do not match (sad path)
    Given I am on the users new page
    Then I should see "Sign Up!"
    And I fill in "Name" with "Fiona Battersby"
    And I fill in "Email" with "fifi@yahoo.com"
    And I select "No" from "Are you a professor?"
    And I fill in "Password" with "I love Xaviera"
    And I fill in "Confirm Password" with "I love bruh"
    
    And I press "Submit"
    Then I should see "Passwords do not match"
    And I should be on the users new page
    
  
Scenario: create new user but not fill in all the fields (sad path)
    Given I am on the users new page
    Then I should see "Sign Up!"
    And I fill in "Name" with "Fiona Battersby"
    And I fill in "Password" with "I love Xaviera"
    And I press "Submit"
    Then I should be on the users new page
    And I should see "Please fill in all fields."