class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end

  def test
    @test = "no name"
    @test = current_user.name if logged_in?
    @beatles = Beatle.all
  end
end
