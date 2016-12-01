Feature: Student can add themself to a class

	As a student
	So that I can add add class to my courselist
	I want add myself to an existing class

Scenario: Add CS1040 to my courselist
  
	Given I am on the CS1040 course page
	And I press "Add"
	Then I should be on the Home page
	And I should see "CS1040"
	
