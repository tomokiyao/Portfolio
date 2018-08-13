class AddKindIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :kind_id, :integer
  end
end
