class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :price
      t.references :user
      t.text :description

      t.timestamps
    end
  end
end
