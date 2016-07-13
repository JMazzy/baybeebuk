class AddPersonToUser < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.integer :person_id

      t.index :person_id, unique: true
    end
  end
end
