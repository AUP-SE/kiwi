Feature: login
  As a user (prof or student) so that I can see my account and the rest of everything else. 
  
Background: 
  Given I am on the home page
  Then I should see "Sign in"
  When I press "Sign in"
  Then I should be on the Login page
  
Scenario: invalid user 
  Given I fill in "email" with "xaviera@gmail.com"
  Given I fill in "password" with "ThisIsNotMyPassword"
  When I press "Login"
  Then I should see "Password or email incorrect. "
  
Scenario: valid user
  Given I fill in "email" with "areivax@gmail.com"
  Given I fill in "password" with "ThisIsMyPassword"
  When I press "Login"
  Then I should see "Login successful." 
  