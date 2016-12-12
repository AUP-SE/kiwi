Feature: Be able to see all students in a couse
  
Scenario: Show users 
  Given I have students 
  And I am on the users course page
  Then I should see "Names"
  And I should seaaaa "Luis"