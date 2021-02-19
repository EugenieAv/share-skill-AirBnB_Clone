class RemoveNameFromServices < ActiveRecord::Migration[6.0]
  def change
    remove_column :services, :name, :string
  end
end
