class CreateFreeTraders < ActiveRecord::Migration[5.2]
  def change
    create_table :free_traders do |t|

      t.timestamps
    end
  end
end
