class AddDetailLocationToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :detail_location, :text
  end
end
