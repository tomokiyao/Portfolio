class AddFirstTermToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :first_term, :date
  end
end
