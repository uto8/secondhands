class AddTypeToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :item_type, :boolean
  end
end
