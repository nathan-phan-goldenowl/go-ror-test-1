class Users::GetUserFollowingsService < ApplicationService
  def initialize(user)
    @user = user
  end
  
  def call
    @user.following_users
  end
end
