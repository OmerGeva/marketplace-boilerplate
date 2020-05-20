class ChangeBookingsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :user_id
    add_column :bookings, :client_name, :string
    add_column :bookings, :phone_number, :string
    add_column :bookings, :client_email, :string
    add_column :bookings, :message, :text
  end
end
