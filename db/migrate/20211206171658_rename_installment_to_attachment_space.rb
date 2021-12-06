class RenameInstallmentToAttachmentSpace < ActiveRecord::Migration[6.0]
  def change
    rename_table :installments, :attachment_spaces
  end
end
