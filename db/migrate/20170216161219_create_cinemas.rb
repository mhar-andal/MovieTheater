class CreateCinemas < ActiveRecord::Migration[5.0]
  def change
    create_table :cinemas do |t|
      t.integer :seating_capacity

      t.timestamps
    end
  end
end
