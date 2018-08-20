class AddEstablishmentToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :establishment, :text
  end
end
