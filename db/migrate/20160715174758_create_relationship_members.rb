class CreateRelationshipMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :relationship_members do |t|
      t.integer :relationship_id
      t.integer :person_id
      t.string :role

      t.index [:relationship_id, :person_id], unique: true
      t.index :role

      t.timestamps
    end
  end
end
