class EpicenterController < ApplicationController
  def feed
  end

  def trending
  end

  def show_user
    @user = User.find(params[:id].to_i)
  end

  def now_following
  end

  def unfollow
  end
end
