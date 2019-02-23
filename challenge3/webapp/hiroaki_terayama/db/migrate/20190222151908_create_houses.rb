class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.integer :origin_id, null: false
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.string :city, null: false
      t.integer :num_of_people, null: false
      t.boolean :has_child, default: false, null: false

      t.timestamps
    end
  end
end
