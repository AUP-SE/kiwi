Feature: logout
  
  
Scenario: signed in user logs out (happy path)
  Given I am logged in
  Then I should see "Log out"
  When I follow "Log out" 
  Then I should see "You have been logged out" 
  And I should be on the login page 