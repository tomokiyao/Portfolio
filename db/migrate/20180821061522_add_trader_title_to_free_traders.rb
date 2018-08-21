class AddTraderTitleToFreeTraders < ActiveRecord::Migration[5.2]
  def change
    add_column :free_traders, :trader_title, :string
  end
end
