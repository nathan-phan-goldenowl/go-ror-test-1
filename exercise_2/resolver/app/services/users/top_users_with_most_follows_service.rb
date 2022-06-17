class Users::TopUsersWithMostFollowsService < ApplicationService
  def initialize(top_range)
    @top_range = top_range
  end

  def call
    User.all.order(follows_count: :desc).limit(@top_range)
  end
end
