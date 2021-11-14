class RenameTypeColumNameComponentType < ActiveRecord::Migration[6.0]
  def change
    rename_column :components, :type, :component_type
  end
end
