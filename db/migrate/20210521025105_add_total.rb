class AddTotal < ActiveRecord::Migration[6.1]
  def change
    add_column :reserves, :total_people, :integer
  end
end
