class CreateEnergies < ActiveRecord::Migration[6.1]
  def change
    create_table :energies do |t|
      t.integer :label
      t.references :house, foreign_key: true
      t.integer :year
      t.integer :month
      t.float :temperature
      t.float :daylight
      t.integer :energy_production

      t.timestamps
    end
  end
end
