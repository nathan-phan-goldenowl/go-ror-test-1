class ResetCounterCache < ActiveRecord::Migration[6.1]
  def change
    User.find_each do |user|
      User.reset_counters(user.id, :follows)
    end
  end
end
