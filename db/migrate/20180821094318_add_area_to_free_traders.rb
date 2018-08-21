class AddAreaToFreeTraders < ActiveRecord::Migration[5.2]
  def change
    add_column :free_traders, :area, :string
  end
end
