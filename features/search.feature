Feature: Search

Scenario: Perform Basic Search
    Given the user is on the jamtangan.com homepage
    When the user enters a search query in the search bar
    And clicks on the search button
    Then the user should see relevant search results

Scenario: Advanced Search with Filters
    Given the user is on the jamtangan.com search page
    When the user applies filters such as brand, price range, etc.
    And clicks on the search button
    Then the user should see refined search results based on the applied filters

Scenario: Empty Search Result
    Given the user is on the jamtangan.com search page
    When the user enters a non-existent query
    And clicks on the search button
    Then the user should see a message indicating no results found

Scenario: View Product Details from Search Results
    Given the user is on the jamtangan.com search results page
    When the user clicks on a specific product in the search results
    Then the user should be redirected to the product details page

Scenario: Add Item to Cart from Search Results
    Given the user is on the jamtangan.com search results page
    When the user adds a product to the shopping cart
    Then the user should see a confirmation message
    And the item should be added to the shopping cart

Scenario: Search Autocomplete Suggestions
    Given the user is on the jamtangan.com search bar
    When the user starts typing a query
    Then the user should see autocomplete suggestions related to the entered query

Scenario: Search with Special Characters
    Given the user is on the jamtangan.com search page
    When the user enters a search query with special characters
    And clicks on the search button
    Then the user should see relevant search results without errors

Scenario: Search History
    Given the user is on the jamtangan.com search page
    When the user views the search history
    Then the user should see a list of their recent search queries

Scenario: Clear Search History
    Given the user is on the jamtangan.com search page
    When the user clears their search history
    Then the user should not see any previous search queries in the history

Scenario: Voice Search
    Given the user is on the jamtangan.com search page
    When the user activates voice search and speaks a query
    Then the user should see relevant search results based on the spoken query
