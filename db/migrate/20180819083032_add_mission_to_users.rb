class AddMissionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :mission, :text
  end
end
