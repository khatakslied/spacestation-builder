class ChangeComponentIdNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :attachment_spaces, :component_id, true
  end
end
