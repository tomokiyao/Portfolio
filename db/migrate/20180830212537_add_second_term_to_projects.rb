class AddSecondTermToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :second_term, :date
  end
end
