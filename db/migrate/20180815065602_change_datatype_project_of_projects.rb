class ChangeDatatypeProjectOfProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :project_image_id, :text
  end
end
