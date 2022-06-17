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
require 'rails_helper'

RSpec.describe Follow, type: :model do
  context 'associations' do
    it { is_expected.to belongs_to(:follower) }
    it { is_expected.to belongs_to(:followee) }
  end
end
