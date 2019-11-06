class AddCheckinCheckoutToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :checkin, :string
    add_column :reservations, :checkout, :string
  end
end
