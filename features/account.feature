Feature: Account

Scenario: View Account Information
    Given the user is logged in to jamtangan.com
    When the user navigates to the account section
    Then the user should see their personal information

Scenario: Edit Account Information
    Given the user is logged in to jamtangan.com
    When the user updates their account details
    And clicks on the save changes button
    Then the user should see a success message
    And the account details should be updated

Scenario: Change Password
    Given the user is logged in to jamtangan.com
    When the user navigates to the change password section
    And enters a new password
    And clicks on the change password button
    Then the user should see a password changed successfully message

Scenario: Add Shipping Address
    Given the user is logged in to jamtangan.com
    When the user adds a new shipping address
    And clicks on the save address button
    Then the user should see the new address in their account details

Scenario: Edit Shipping Address
    Given the user is logged in to jamtangan.com
    When the user edits an existing shipping address
    And clicks on the save changes button
    Then the user should see a success message
    And the shipping address details should be updated

Scenario: Delete Shipping Address
    Given the user is logged in to jamtangan.com
    When the user deletes a shipping address
    And confirms the deletion
    Then the user should see a success message
    And the deleted address should not appear in their account details

Scenario: View Order History
    Given the user is logged in to jamtangan.com
    When the user navigates to the order history section
    Then the user should see a list of their previous orders

Scenario: View Wishlist
    Given the user is logged in to jamtangan.com
    When the user navigates to the wishlist section
    Then the user should see a list of their saved items

Scenario: Logout
    Given the user is logged in to jamtangan.com
    When the user clicks on the logout button
    Then the user should be redirected to the login page
    And the user should be logged out of their account