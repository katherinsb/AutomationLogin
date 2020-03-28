Feature: Login

  Scenario: Successful Login 
    Given User is logging into an account
     When User enter email 'kathesb58@gmail.com'
      And User enter password 'A12345678.'
     Then Validate login 'Katherine Sierra'

 Scenario: Invalid password
    Given User is logging into an account
     When User enter email 'kathesb58@gmail.com'
      And User enter password 'A123456'
     Then Validate failed login
