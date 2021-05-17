module MicropostsHelper
  def replay_content(micropost)
    split_microposts = micropost.content.split(" ", 2)
    name = split_microposts.first
    text = split_microposts.second 
    reply_user = User.find_by(unique_name: split_microposts.first.delete('@').downcase)
    return [name,text,reply_user] 
  end
end
