class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :checkin
      t.string :checkout
      t.belongs_to :listing, foreign_key: true
      t.belongs_to :guest, foreign_key: true

      t.timestamps
    end
  end
end
