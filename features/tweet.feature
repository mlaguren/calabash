Feature: Yamba allows users to tweet

Scenario Outline: As a logged in user, I would like to tweet a message

Given I log into Yamba
  And I click on the tweet button
When I enter <tweet> 
  And I hit Tweet
Then my tweet, <tweet> is available

Examples:
|	tweet 	|
| "This is one"	|
| "This is two"	|
| "This is 3"	|

