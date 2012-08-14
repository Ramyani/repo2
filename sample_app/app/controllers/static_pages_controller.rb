class StaticPagesController < ApplicationController
  #def home
    # @micropost = current_user.microposts.build if signed_in?
  #end
  
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])

      else

      #users = User.all
      #users_rev = users.reverse
      # @users= users_rev.first 10
      # @users = User.paginate(page: params[:page])

      @users = User.order("created_at DESC").limit(10)
      @microposts = Micropost.order("created_at DESC").limit(10)

    end
  end

  def help
  end

  def about
  end

def contact
end
end
