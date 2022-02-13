class ChangeDatatypeItemTypeOfPosts < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :item_type, :string
  end
end
