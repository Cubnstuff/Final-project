class EpicenterController < ApplicationController
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
  end

  def now_following
    @user = User.find(params[:id].to_i)
  end

  def unfollow
  end
end
