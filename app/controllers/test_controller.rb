class TestController < ApplicationController
  def index
    @beatles = Beatle.all
    fav = current_user.beatlefav.to_i
    @beatle = Beatle.find(fav).name
    @beatle = "no name" unless logged_in?
  end
end
