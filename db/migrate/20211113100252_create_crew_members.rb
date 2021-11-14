class CreateCrewMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :crew_members do |t|
      t.string :name
      t.string :status
      t.references :space_station, null: false, foreign_key: true

      t.timestamps
    end
  end
end
