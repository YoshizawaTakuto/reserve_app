class ColumnToRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :user_id, :string
    add_column :rooms, :user_id, :integer
    
  end
end
