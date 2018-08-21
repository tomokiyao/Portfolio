class AddWantedDetailToFreeTraders < ActiveRecord::Migration[5.2]
  def change
    add_column :free_traders, :wanted_detail, :text
  end
end
