class AddPowerGeneratedToComponents < ActiveRecord::Migration[6.0]
  def change
    add_column :components, :power_generated, :integer
  end
end
