class CreateUnreads < ActiveRecord::Migration[5.2]
  def change
    create_table :unreads do |t|
      t.integer :room_id
      t.integer :user_id
      t.integer :count

      t.timestamps
    end
  end
end
