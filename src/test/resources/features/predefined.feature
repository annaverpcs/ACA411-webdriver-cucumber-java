# Exercize for XPath
# Author: Anna Verkhovskaya

@predefined
Feature: Smoke steps
# scenario for with Google
  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://www.google.com/"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Behavior Driven Development"

# scenario for with Gibiru
  @predefined2
  Scenario: Predefined steps for Gibiru
    Given I open url "https://gibiru.com/"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then I should see page title contains "Gibiru"
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
    Then I click on element with xpath "//button[@id='button-addon2']"
    Then I wait for element with xpath "//*[@id='web-results']" to be present
    Then element with xpath "//*[@id='web-results']" should contain text "Behavior Driven Development"

# scenario for Swisscows
  @predefined3
  Scenario: Predefined steps for Swisscows
    Given I open url "https://swisscows.com"
    Then I should see page title contains "Swisscows"
    Then element with xpath "//input[@name='query']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='query']"
    Then I click on element with xpath "//button[@class='search-submit']"
    Then I wait for element with xpath "//*[@class='web-results']" to be present
    Then element with xpath "//*[@class='web-results']" should contain text "Behavior Driven Development"

 # scenario for Duckduckgo
  @predefined3
  Scenario: Predefined steps for Duckduckgo
    Given I open url "https://duckduckgo.com"
    Then I should see page title contains "DuckDuckGo"
    Then element with xpath "//input[@id='search_form_input_homepage']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='search_form_input_homepage']"
    Then I click on element with xpath "//input[@id='search_button_homepage']"
    Then I wait for element with xpath "//*[@class='cw']" to be present
    Then element with xpath "//*[@class='cw']" should contain text "Behavior Driven Development"

 # scenario for Duckduckgo with And
  @predefined33
  Scenario: Predefined steps for Duckduckgo
    Given I open url "https://duckduckgo.com"
    Then I should see page title contains "DuckDuckGo"
    Then element with xpath "//input[@id='search_form_input_homepage']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='search_form_input_homepage']"
    And I click on element with xpath "//input[@id='search_button_homepage']"
    Then I wait for element with xpath "//*[@class='cw']" to be present
    Then element with xpath "//*[@class='cw']" should contain text "Behavior Driven Development"
  #scenario for https://www.searchencrypt.com
  #scenario for https://www.startpage.com
  #scenario for https://www.yandex.com
  #scenario for https://www.ecosia.org
  #scenario for https://www.wiki.com/
  # //button[@id='proceed-button']

  @predefined4
  Scenario: Predefined steps for Wiki
    Given I open url "https://www.wiki.com"
    Then I should see page title as "Wiki.com"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    And I click on element with xpath "//input[@name='btnG']"
    Then I should see page title contains "Form is not secure"
    Then I click on element with xpath "//button[@id='proceed-button']"
    Then I should see page title as "Wiki.com"
    Then I switch to iframe with xpath "//iframe[@name='googleSearchFrame']"
    Then I wait for element with xpath "//*[@id='cse']" to be present
    Then element with xpath "//*[@id='cse']" should contain text "Behavior Driven Development"


  #scenario for https://www.givewater.com/
  #scenario for https://ekoru.org/






  