Feature: Yamba allows users to tweet

@debug
Scenario: As a logged in user, I would like to tweet a message

Given I log into Yamba
  And I click on the tweet button
When I enter "My First Tweet"
  And I hit Tweet
Then my tweet, "First Tweet" is available
