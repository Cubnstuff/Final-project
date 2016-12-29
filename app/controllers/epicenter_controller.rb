class EpicenterController < ApplicationController
  before_filter :authenticate_user!
  
  def feed
    @following_doodles = []
    
    Doodle.all.each do |doodle|
      if current_user.following.include?(doodle.user_id)
        @following_doodles.push(doodle)
      end
    end
  end
  def trending
  end

  def show_user
    @user = User.find(params[:id])
  end

  def now_following
    @user = User.find(params[:id].to_i)
    current_user.following.push(params[:id].to_i)
  	current_user.save
  end

  def unfollow
    @user = User.find(params[:id].to_i)
    current_user.following.delete(params[:id].to_i)
    current_user.save
    
  end
end
