class CreatePersonMemories < ActiveRecord::Migration[5.0]
  def change
    create_table :person_memories do |t|
      t.integer :person_id, null: false
      t.integer :memory_id, null: false

      t.index [:person_id, :memory_id], unique: true

      t.timestamps
    end

    change_table :memories do |t|
      t.remove :person_id
    end
  end
end
