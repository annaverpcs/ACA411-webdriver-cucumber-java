#Exercize for Quote application
# Epic : https://jira.portnov.com/browse/ACA-655
# Author: Anna Verkhovskaya
  @quote @regression
  Feature: Quote Page Scenarios
    Background:
      Given I open url "https://skryabin.com/market/quote.html"
      Then I should see page title as "Get a Quote"

    @quote1
    Scenario: Validate responsive UI behavior
      # resize to desktop size
      When I resize window to 1920 and 1080
      Then I wait for 1 sec
      Then element with xpath "//b[@id='location']" should be displayed
      # resize to laptop size
      When I resize window to 1440 and 900
      Then I wait for 1 sec
      Then element with xpath "//b[@id='location']" should be displayed
       # resize to mobile size
      When I resize window to 393 and 851
      Then I wait for 5 sec
      But element with xpath "//b[@id='location']" should not be displayed

    @quote2
    Scenario:  Validate minimal “Username” field length requirement as 2 characters
      When I type "Q" into element with xpath "//input[@name='username']"
      Then I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='username-error']" should be displayed
      Then element with xpath "//label[@id='username-error']" should have text as "Please enter at least 2 characters."
      Then I clear element with xpath "//input[@name='username']"
      Then element with xpath "//label[@id='username-error']" should have text as "This field is required."
      When I type "AA" into element with xpath "//input[@name='username']"
      And I click on element with xpath "//button[@id='formSubmit']"
      But element with xpath "//label[@id='username-error']" should not be displayed
      And I wait for 1 sec
      
    @quote3
      Scenario: Validate Email field behavior
      When I type "test%google.com" into element with xpath "//input[@name='email']"
      And I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath " //label[@id='email-error']" should be displayed
      Then element with xpath " //label[@id='email-error']" should have text as "Please enter a valid email address."
       When I clear element with xpath "//input[@name='email']"
      Then element with xpath " //label[@id='email-error']" should have text as "This field is required."
      When I type "test@google.com" into element with xpath "//input[@name='email']"
      Then element with xpath " //label[@id='email-error']" should not be displayed
      And I wait for 3 sec