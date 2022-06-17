class AddFollowsCountToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :follows_count, :integer, default: 0, null: false
  end
end
