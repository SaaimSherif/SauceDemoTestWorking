Feature: Login and Product Ordering

  Scenario: Successful Login
    Given I am on the Demo Login Page
    When I fill the account information for account "standard_user" into the Username field and the Password field
    And I click the Login Button
    Then I am redirected to the Demo Main Page
    And I verify the App Logo exists

  Scenario: Failed Login
    Given I am on the Demo Login Page
    When I fill the account information for account "locked_out_user" into the Username field and the Password field
    And I click the Login Button
    Then I verify the Error Message contains the text "Sorry, this user has been banned."

  Scenario: Order a product
    Given I am on the Demo Login Page
    When I fill the account information for account "standard_user" into the Username field and the Password field
    And I click the Login Button
    Then I am redirected to the Demo Main Page
    When user sorts products from high price to low price
    And user adds highest priced product
    And user clicks on cart
    And user clicks on checkout
    And user enters first name Alice
    And user enters last name Doe
    And user enters zip code 592
    And user clicks Continue button
    Then I verify in Checkout overview page if the total amount for the added item is "$53.99"
    When user clicks Finish button
    Then the "Thank You" header is shown in Checkout Complete page
