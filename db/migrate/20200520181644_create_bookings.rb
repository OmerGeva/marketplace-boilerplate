class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.time :time
      t.date :date
      t.references :user, foreign_key: true
      t.references :haircut, foreign_key: true

      t.timestamps
    end
  end
end
