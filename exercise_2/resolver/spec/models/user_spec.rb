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
require 'rails_helper'

RSpec.describe User, type: :model do
  context 'associations' do
    it { is_expected.to have_many(:follows).dependent(:destroy) }
    it { is_expected.to have_many(:followers).through(:follows) }

    it { is_expected.to have_many(:followings).dependent(:destroy) }
    it { is_expected.to have_many(:following_users).through(:followings) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_presence_of(:email) }
  end
end
