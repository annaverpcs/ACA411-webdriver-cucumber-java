#Exercize for Webdriver experience
# Author: Anna Verkhovskaya

  @webdriver
  Feature: Exercize for Webdriver experience
    Background:
      Given I navigate "quote"
    @webdriver1
    Scenario: Open URL using site name
      #Given I navigate "quote"
      And I Print page details

    @webdriver2
      Scenario: Email field verification
       When I type "abc" into email field
      And I click Submit button
      Then error message "Please enter a valid email address." should be displayed
      And I wait for 2 sec

    @webdriver3
    Scenario: Date picker
      When I validate date picker
      Then I validate the date picker entered the date "01/20/1985"

@webdriver4
Scenario: Full name validation
  When Click on Name field
  Then I open dialog window
  #Then I type "A" as First Name
  #Then I type "S" as Middle Name
  #Then I type "D" as Last Name
  Then I type "A" as First Name "S" as Middle Name "D" as Last Name and validate the Full name is "A S D"
  #Then I click Save button
 # Then I validate the Full name is "A S D"
