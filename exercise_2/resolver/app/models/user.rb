# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  email         :string           default(""), not null
#  follows_count :integer          default(0), not null
#  username      :string           default(""), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class User < ApplicationRecord
  has_many :follows, class_name: 'Follow', foreign_key: 'followee_id', dependent: :destroy
  has_many :followers, through: :follows

  has_many :followings, class_name: 'Follow', foreign_key: 'follower_id', dependent: :destroy
  has_many :following_users, through: :followings

  validates :username, presence: true
  validates :email, presence: true
end
