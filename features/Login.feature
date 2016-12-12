Feature: login
  as a user of Kiwi
  I want to use my account
  
Background: 
  Given I am on the home page
  Given I have a user with email areivax@gmail.com and password ThisIsMyPassword
  Then I should see "Login"
  When I follow "Login"
  Then I should be on the Login page
  
Scenario: invalid user 
  Given I fill in "user_email" with "xaviera@gmail.com"
  Given I fill in "user_password" with "ThisIsNotMyPassword"
  When I press "Login"
  Then I should see "Password or email incorrect. "
  
Scenario: valid user
  Given I fill in "user_email" with "xaviera@gmail.com"
  Given I fill in "user_password" with "ThisIsMyPassword"
  When I press "Login"
  Then I should see "Login successful." 
  