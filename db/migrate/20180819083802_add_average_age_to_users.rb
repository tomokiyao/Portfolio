class AddAverageAgeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :average_age, :string
  end
end
