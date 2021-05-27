class ColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :image_name, :string
    add_column :users, :image, :string
  end
end
