Feature: Hello Cucumber
  As a programmer with no idea of BDD
  I want to see if I can generate a cucumber test
  So I can build better code

  Scenario: The test is runned

    # When I send a POST request to "/banana" with the following:
    #  | name | Patata |
    When I send a GET request to "/banana"
    Then the response status should be "200"
    # And Print response
    And show me the unparsed response
    # And the JSON response should have "$['status']" with the text "success"
    # And the JSON response should have "$['data']['banana']" with the text "gross michel"