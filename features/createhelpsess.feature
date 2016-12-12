Feature: Student can request to have a help session
    As a student
    So that I can ask for help
    I want to request a helper to help me
    
Scenario: Create help session request
  Given I have courses
  And I am CS3050 course page
  And I follow "Create Help Session"
  Then I should be on the Create Help Session page
  And I should see "Topic"
  And I press "Submit"
  Then I should be on the CS3050 course page
  And I should see "Thank you for submitting a help session request"