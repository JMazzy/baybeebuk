class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.integer :relationship_type_id

      t.index :relationship_type_id

      t.timestamps
    end
  end
end
