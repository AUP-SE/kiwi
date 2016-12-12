Feature: Be able to see all professors
  As an educated person
  So that I can see all professors
  I want to show all of professors
  
Scenario: Show professors 
  Given I have professors 
  And I am on the users professors page
  Then I should see "Name"
  And I should sea "Kiana"
