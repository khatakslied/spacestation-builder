class CreateSpaceStations < ActiveRecord::Migration[6.0]
  def change
    create_table :space_stations do |t|
      t.string :name
      t.integer :capacity
      t.integer :power

      t.timestamps
    end
  end
end
