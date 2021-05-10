class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      
      t.integer :user_id, null: false
      t.string :report_title, null: false
      t.text :sentence, null: false
      t.boolean :is_comfortable, null: false, default: false
      
      t.timestamps
    end
  end
end
