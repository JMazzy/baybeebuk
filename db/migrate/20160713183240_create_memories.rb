class CreateMemories < ActiveRecord::Migration[5.0]
  def change
    create_table :memories do |t|
      t.integer :user_id, null: false
      t.integer :person_id, null: false
      t.string :title, null: false
      t.text :body
      t.date :memory_date, null: false

      t.index :user_id
      t.index :person_id
      t.index :memory_date

      t.timestamps
    end
  end
end
