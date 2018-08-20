class AddTopImageIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :top_image_id, :text
  end
end
