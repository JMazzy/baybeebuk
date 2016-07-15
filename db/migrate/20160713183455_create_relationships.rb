class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.integer :type_id

      t.index :type_id

      t.timestamps
    end
  end
end
