class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.integer :num_of_people
      t.string :has_child

      t.timestamps
    end
  end
end
