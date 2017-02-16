class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :ticket_id
      t.integer :seat_id
      t.integer :showing_id

      t.timestamps
    end
  end
end
