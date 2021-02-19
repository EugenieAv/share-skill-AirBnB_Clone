class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :category
      t.string :name
      t.datetime :start_at
      t.datetime :end_at
      t.string :localization
      t.references :author, null: false # removing foreign_key: true
      t.references :consumer, null: false # removing foreign_key: true

      t.timestamps
    end

    # ligne à rajouter donc
    add_foreign_key :services, :users, column: :author_id
    add_foreign_key :services, :users, column: :consumer_id
  end
end

# bonne doc sur le sujet
# https://dev.to/luchiago/multiple-foreign-keys-for-the-same-model-in-rails-6-7ml
