class TweetScreen
  include Calabash::Android::Operations

  def initialize
  end

  def enter_tweet(tweet)
    touch("EditText id:'status_text'")
    keyboard_enter_text(tweet)
  end

  def hit_tweet
    touch("Button id:'status_button_tweet'")
    wait_for_element_exists("ProgressBar id:'progress'")
    wait_for_element_does_not_exist("ProgressBar id:'progress'")     
  end

end
