Feature: Anonymous person can sign up for an account
As a student/teacher 
I need an account to access this service

Scenario: Create new user
Given I am on the login index page
Then I should see "Sign up"
And I fill in "Full Name" with "Fiona Battersby"
And I press "Submit"
Then I should be on the course index page 
And I should see "Congrats 'Fiona Battersby' you have successfully signed up"