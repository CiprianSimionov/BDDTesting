Feature: Test the javascript alerts

  Background:
    Given I am on the main page

    @jsactions
  Scenario: Test jsalert button
    #Given I am on the main page
    When I press on the jsalert button
    And I press on the OK button from the alert pop-up
    Then I should see the following message: "You successfully clicked an alert"

      @jsactions
  Scenario: Test  jsconfirm OK button
    #Given I am on the main page
    When I press on the jsconfirm button
    And I press on the OK button from the alert pop-up
    Then I should see the following message: "You clicked: Ok"

  @jsactions
  Scenario: Test  jsconfirm Cancel button
    #Given I am on the main page
    When I press on the jsconfirm button
    And I press on the Cancel button from the alert pop-up
    Then I should see the following message: "You clicked: Cancel"

  @jsactions
  Scenario Outline: Test  jsprompt OK button
    #Given I am on the main page
    When I press on the jsprompt button
    And I input "<text>"
    And I press on the OK button from the alert pop-up
    Then I should see the following message: "You entered: "<text>""
    Examples:
      | text   |
      | Robert |
      | Andrei |
      | Matei  |
      | Cristi |

  @jsactions
  Scenario: Test  jsprompt Cancel button
    #Given I am on the main page
    When I press on the jsprompt button
    And I press on the Cancel button from the alert pop-up
    Then I should see the following message: "You entered: null"
