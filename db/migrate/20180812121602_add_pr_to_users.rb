class AddPrToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pr, :text
  end
end
