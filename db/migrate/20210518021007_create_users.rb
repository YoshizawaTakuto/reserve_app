class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :image_name
      t.string :name
      t.text :content
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
