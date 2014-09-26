class HomeScreen
  include Calabash::Android::Operations

  def initialize
  end

  def login_as
    touch("OverflowMenuButton")
    touch("TextView text:'Settings'")
    touch("TextView text:'User name'")
    touch("EditText id:'edit'")
    keyboard_enter_text("student")
    sleep(1)
    touch("Button text:'OK'")
    touch("TextView text:'Password'")
    touch("EditText id:'edit'")
    keyboard_enter_text("password")
    sleep(1)
    touch("Button text:'OK'")
    touch("TextView id:'action_bar_title'")
  end

  def click_on_tweet
    touch("ActionMenuItemView id:'action_tweet'")
  end

  def see_my_tweet(tweet)
    touch("TextView id:'action_bar_title'")
    touch("ActionMenuItemView id:'action_refresh'")
    sleep 5
    messages = query("* id:'list_item_text_message'")
    assert(messages)
    msg = messages[0]["text"]
    assert_equal(tweet, msg)
  end

end
