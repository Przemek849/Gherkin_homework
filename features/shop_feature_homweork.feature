Feature: Product search and purchase

  Scenario: Searching product after login
    Given I am logged in to the online store
    When I search for "laptop"
    Then I should see a list of search results containing "laptop"
    When I click on the first product in the search results
    Then I should be on the product detail page
    And I should see the product's price and description

  Scenario: Adding a product to the cart and purchasing it
    Given I am on the product detail page
    When I click the "Add to Cart" button
    Then the product should be added to my cart
    When I navigate to the cart
    Then I should see the product in my cart
    When I click the "Proceed to Checkout" button
    And I fill in the required shipping information
    And I select a payment method
    And I confirm the purchase
    Then I should see an order confirmation message
    And I should receive a confirmation email with the order details
