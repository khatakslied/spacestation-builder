class AddRoomToComponents < ActiveRecord::Migration[6.0]
  def change
    add_column :components, :room, :integer
  end
end
