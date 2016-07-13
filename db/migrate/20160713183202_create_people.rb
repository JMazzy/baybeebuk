class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :first_name, null: false
      t.string :middle_name
      t.string :last_name, null: false
      t.date :birth_date, null: false
      t.string :birth_place, null: false
      t.float :birth_weight, null: false
      t.string :gender

      t.index :birth_date

      t.timestamps
    end
  end
end
