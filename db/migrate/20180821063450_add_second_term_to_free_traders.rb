class AddSecondTermToFreeTraders < ActiveRecord::Migration[5.2]
  def change
    add_column :free_traders, :second_term, :date
  end
end
