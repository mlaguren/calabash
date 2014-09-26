class TweetScreen
  include Calabash::Android::Operations

  def initialize
  end

  def enter_tweet(tweet)
    touch("* id:'status_text'")
    keyboard_enter_text(tweet)
    query("* id:'status_text_count'")

  end

  def hit_tweet
    touch("* id:'status_button_tweet'")
    wait_for_element_exists("* id:'status_button_tweet'")
    touch("* id:'action_bar_title'")
  end

end
