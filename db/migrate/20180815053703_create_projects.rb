class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :project_title
      t.integer :genre
      t.integer :location
      t.string :fee
      t.string :time
      t.text :project_content
      t.text :required_skill
      t.text :welcome_skill

      t.timestamps
    end
  end
end
