class CreateRelationshipTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :relationship_types do |t|
      t.string :name

      t.index :name, unique: true

      t.timestamps
    end
  end
end
