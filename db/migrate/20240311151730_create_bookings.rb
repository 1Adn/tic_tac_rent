class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.date :starting_date
      t.date :ending_date
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :watch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
