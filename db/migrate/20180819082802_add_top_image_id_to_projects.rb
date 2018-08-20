class AddTopImageIdToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :top_image_id, :text
  end
end
