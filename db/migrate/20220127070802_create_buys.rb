class CreateBuys < ActiveRecord::Migration[6.0]
  def change
    create_table :buys do |t|
      t.references :user
      t.references :post, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
