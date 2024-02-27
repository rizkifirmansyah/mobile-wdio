Feature: Login

Scenario: Successful Login
    Given the user is on the jamtangan.com login page
    When the user enters valid credentials
    And clicks on the login button
    Then the user should be redirected to the homepage

Scenario: Failed Login - Invalid Credentials
    Given the user is on the jamtangan.com login page
    When the user enters invalid username or password
    And clicks on the login button
    Then the user should see an error message
    And remain on the login page

Scenario: Failed Login - Empty Fields
    Given the user is on the jamtangan.com login page
    When the user leaves the username or password fields empty
    And clicks on the login button
    Then the user should see a required field error message
    And remain on the login page

Scenario: Failed Login - Account Lockout
    Given the user account is temporarily locked
    When the user enters valid credentials
    And clicks on the login button
    Then the user should see an account lockout message
    And remain on the login page

Scenario: Forgot Password - Request Reset
    Given the user is on the jamtangan.com login page
    When the user clicks on the "Forgot Password" link
    And enters their email for password reset
    And clicks on the reset button
    Then the user should receive a password reset email

Scenario: Forgot Password - Invalid Email
    Given the user is on the jamtangan.com login page
    When the user clicks on the "Forgot Password" link
    And enters an invalid email for password reset
    And clicks on the reset button
    Then the user should see an invalid email error message
    And remain on the forgot password page