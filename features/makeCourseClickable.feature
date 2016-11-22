Feature: Student can click on a class
  As a student
  So that I can see a class info
  I want to be able to click it

Background:
  Given I am on coursesindex page

Scenario: Click on the "CS1040" 
  When I should see "CS1040"
  Then I follow "CS1040"
  And I should be on the homepage