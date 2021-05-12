class TestController < ApplicationController
  def index
    @test = "no name"
    @test = current_user.name if logged_in?
    @beatles = Beatle.all
  end
end
