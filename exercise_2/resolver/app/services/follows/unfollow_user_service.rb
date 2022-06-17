class Follows::UnfollowUserService < ApplicationService
  def initialize(follower, followee)
    @follower = follower
    @followee = followee
  end

  def call(follower, followee)
    Follow.find_by(follower: @follower, followee: @followee)&.destroy
  end
end
