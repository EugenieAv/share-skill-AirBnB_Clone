class CreateProfessionalCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :professional_categories do |t|
      t.references :category, null: false, foreign_key: true
      t.references :professional, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
