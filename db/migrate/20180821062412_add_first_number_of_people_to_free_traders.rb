class AddFirstNumberOfPeopleToFreeTraders < ActiveRecord::Migration[5.2]
  def change
    add_column :free_traders, :first_number_of_people, :integer
  end
end
