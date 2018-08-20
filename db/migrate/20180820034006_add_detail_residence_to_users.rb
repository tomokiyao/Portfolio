class AddDetailResidenceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :detail_residence, :string
  end
end
