class Users::GetUserFollowersService < ApplicationService
  def initialize(user, start_date=nil, end_date=nil)
    @user = user
    @start_date = start_date
    @end_date = end_date
  end

  def call
    if @start_date.present? && @end_date.present?
      @user.followers.where(created_at: (@start_date..@end_date))
    else
      @user.followers
    end
  end
end
