Given(/^I log into Yamba$/) do
  home = HomeScreen.new
  home.login_as
end

When(/^I click on the tweet button$/) do
  home = HomeScreen.new
  home.click_on_tweet
end

When(/^I enter "(.*?)"$/) do |message|
  tweet = TweetScreen.new
  tweet.enter_tweet(message)
end

When(/^I hit Tweet$/) do
  tweet = TweetScreen.new
  tweet.hit_tweet
end

Then(/^my tweet, "(.*?)" is available$/) do |message|
  home = HomeScreen.new
  home.see_my_tweet(message)
end
