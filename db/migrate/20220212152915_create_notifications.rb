class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.integer :visiter_id
      t.integer :visited_id
      t.integer :item_id
      t.boolean :checked, default: false, null: false

      t.timestamps
    end
  end
end
