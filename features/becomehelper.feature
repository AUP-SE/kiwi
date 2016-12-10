Feature: Student can become a helper
  As a student who understands the coursework
  So that I can help other students
  I want to become a helper
  
Scenario: Become a helper
  Given I am on the CS3050 course page
  Then I should see "Become a Helper for CS3050"
  And I press "Become a Helper"
  Then I should see user helper page
  And I should see "I want to become a helper!"
  And I press "Submit"
  Then I should be on CS3050 course page
  And I should see "You have been added as a helper for CS3050"