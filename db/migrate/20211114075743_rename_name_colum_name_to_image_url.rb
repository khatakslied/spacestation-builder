class RenameNameColumNameToImageUrl < ActiveRecord::Migration[6.0]
  def change
    rename_column :components, :name, :image_url
  end
end
