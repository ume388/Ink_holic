class CreateInks < ActiveRecord::Migration[5.2]
  def change
    create_table :inks do |t|

      t.integer :user_id, null: false
      t.string :ink_name, null: false
      t.string :ink_image_id, null: false
      t.text :ink_introduction
      t.integer :price
      t.integer :milliliter
      t.float :evaluation
      t.integer :color, null: false, default: 0
      
      
      t.timestamps
    end
  end
end
