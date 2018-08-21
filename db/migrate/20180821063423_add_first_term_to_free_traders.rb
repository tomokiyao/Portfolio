class AddFirstTermToFreeTraders < ActiveRecord::Migration[5.2]
  def change
    add_column :free_traders, :first_term, :date
  end
end
