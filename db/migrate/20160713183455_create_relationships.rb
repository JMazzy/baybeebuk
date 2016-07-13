class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.integer :parent_id, null: false
      t.integer :child_id, null: false

      t.index [:parent_id, :child_id], unique: true

      t.timestamps
    end
  end
end
