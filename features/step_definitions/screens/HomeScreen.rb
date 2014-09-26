class HomeScreen
  include Calabash::Android::Operations

  def initialize
  end

  def login_as
    touch("* contentDescription:'More options'")
    touch("* text:'Settings'")
    touch("* text:'User name'")
    keyboard_enter_text("Student")
    touch("* id:'button1'")
    touch("* text:'Password'")
    keyboard_enter_text("password")
    touch("* id:'button1'")
    touch("* id:'action_bar_title'")
    query("* id:'action_tweet'")
  end

  def click_on_tweet
    touch("* id:'action_tweet'")
  end

  def see_my_tweet(tweet)
    touch("* id:'action_refresh'")
    messages = query("* id:'list_item_text_message'")
    puts messages[0]["text"].class
  end

end
