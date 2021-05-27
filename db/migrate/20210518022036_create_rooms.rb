class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :content
      t.integer :fee
      t.string :address
      t.string :image_name
      #t.string :user_id

      t.timestamps
    end
  end
end
