class CreateSeats < ActiveRecord::Migration[5.0]
  def change
    create_table :seats do |t|
      t.integer :cinema_id
      t.string :seat_indentifier
      t.timestamps
    end
  end
end
