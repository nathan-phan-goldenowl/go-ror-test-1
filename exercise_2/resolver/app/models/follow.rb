# == Schema Information
#
# Table name: follows
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  followee_id :integer          not null
#  follower_id :integer          not null
#
# Indexes
#
#  index_follows_on_followee_id  (followee_id)
#  index_follows_on_follower_id  (follower_id)
#
# Foreign Keys
#
#  followee_id  (followee_id => users.id)
#  follower_id  (follower_id => users.id)
#
class Follow < ApplicationRecord
  # user who follows
  belongs_to :follower, foreign_key: 'follower_id', class_name: 'User', counter_cache: true

  # user who got followed
  belongs_to :followee, foreign_key: 'followee_id', class_name: 'User', counter_cache: true
end
