class CreateReserves < ActiveRecord::Migration[6.1]
  def change
    create_table :reserves do |t|
      t.integer :user_id
      t.integer :room_id
      t.date :start_day
      t.date :end_day
      t.integer :day_count

      t.timestamps
    end
  end
end
