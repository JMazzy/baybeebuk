class CreateUserPeople < ActiveRecord::Migration[5.0]
  def change
    create_table :user_people do |t|

      t.timestamps
    end
  end
end
