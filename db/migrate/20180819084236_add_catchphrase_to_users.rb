class AddCatchphraseToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :catchphrase, :string
  end
end
