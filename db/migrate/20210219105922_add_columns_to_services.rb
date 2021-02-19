class AddColumnsToServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :title, :string
    add_column :services, :description, :text
    add_reference :services, :category, null: false, foreign_key: true
  end
end
