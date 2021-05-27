class CreateReserves < ActiveRecord::Migration[6.1]
    def change
      create_table :reserves do |t|
        t.integer :user_id
        t.integer :room_id
        t.datetime :start_day
        t.datetime :end_day
        t.integer :day_count
        t.integer :total_fee
        t.integer :total_pepole
        
        t.timestamps
      end
    end
  end