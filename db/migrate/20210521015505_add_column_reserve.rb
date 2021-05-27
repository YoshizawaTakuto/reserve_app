class AddColumnReserve < ActiveRecord::Migration[6.1]
  def change
    add_column :reserves, :total_fee, :integer
  end
end
