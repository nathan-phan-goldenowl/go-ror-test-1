class Follows::FollowUserService < ApplicationService
  def initialize(follower, followee)
    @follower = follower
    @followee = followee
  end

  def call
    @follower.followings.create(followee: @followee)
  end
end
