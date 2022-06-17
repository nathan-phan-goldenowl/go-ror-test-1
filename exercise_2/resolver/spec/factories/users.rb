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
FactoryBot.define do
  factory :user do
    username { "test" }
    email { "test" }

    trait :no_name do
      username { "" }
    end

    trait :no_email do
      email { "" }
    end

    trait :valid do
      username { "test" }
      email { "test" }
    end
  end
end
