Feature: Casestudy on TestMe App
@Sanity
  Scenario Outline: Register to TestMe App
    Given TestMe App is launched
    Then click on SignUp link
    Then enter username "<usern>"
    Then enter firstname "<fname>"
    Then enter lastname "<lname>"
    Then enter password "<passw>"
    Then enter confirmpassword "<cpassw>"
    Then enter gender
    Then enter email "<email>"
    Then enter mobilenumber "<mobilenumber >"
    Then enter dob "<dob>"
    Then enter address "<address>"
    Then enter securityquestion
    Then enter answer "<answer>"
    And click on Register button
    Then verify the registration status

    Examples: 
      | usern   | fname        | lname | passw  | cpassw | email                         | mobilenumber | dob        | address                      | answer     |
      | kovind  | ravindra     | nath  | asd123 | asd123 | ravindranathko1@gmail.com     |   8765432109 | 02/05/1984 | delhi,india                  | gujarat    |
      | Nirmala | nirmalasitha | raman | lkj098 | lkj098 | nirmalasitharaman12@gmail.com |   9870654321 | 12/02/1986 | Kulu,Himachal Pradesh, India | WestBengal |
@Smoke
  Scenario: Login to TestMe App
    Given User enters valid username in login page 
    And User enters corresponding password 
    And clicks on login button
    Then verifies login status
@Smoke
  Scenario: Search for one product
    Given Search for one product in search field
    Then click on finddetails
    Then Add to cart
    Then User proceeds to payment
    Then Continue the payment process

@Smoke
  Scenario: The one where user moves to cart with out adding any item in it
    Given Alex logins to TestMeApp
    When Alex search a product like headphone
    And Try to proceed for payment without adding any item to the cart
    Then TestMe does not show the cart icon
