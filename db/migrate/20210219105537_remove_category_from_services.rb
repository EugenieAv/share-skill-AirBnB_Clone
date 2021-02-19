class RemoveCategoryFromServices < ActiveRecord::Migration[6.0]
  def change
    remove_column :services, :category, :string
  end
end
