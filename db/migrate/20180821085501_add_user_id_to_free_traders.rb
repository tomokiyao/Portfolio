class AddUserIdToFreeTraders < ActiveRecord::Migration[5.2]
  def change
    add_column :free_traders, :user_id, :integer
  end
end
