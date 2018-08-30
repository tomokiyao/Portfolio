class CreateTraderFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :trader_favorites do |t|
      t.integer :user_id
      t.integer :free_trader_id

      t.timestamps
    end
  end
end
