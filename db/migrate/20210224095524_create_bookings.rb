class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :status
      t.references :offer, null: false, foreign_key: true
      t.references :professional, null: false, foreign_key: { to_table: :users }
      t.references :consumer, null: false, foreign_key: { to_table: :users }
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
