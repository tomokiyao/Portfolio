class AddReadAtToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :read_at, :datetime
  end
end
