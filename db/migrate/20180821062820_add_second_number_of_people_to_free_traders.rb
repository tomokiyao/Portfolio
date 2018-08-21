class AddSecondNumberOfPeopleToFreeTraders < ActiveRecord::Migration[5.2]
  def change
    add_column :free_traders, :second_number_of_people, :integer
  end
end
