class CreateDatasets < ActiveRecord::Migration[6.0]
  def change
    create_table :datasets do |t|
      t.integer :label
      t.references :house, null: false, foreign_key: true
      t.integer :year
      t.integer :month
      t.decimal :temperature
      t.decimal :daylight
      t.integer :energy_production

      t.timestamps
    end
  end
end
