class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :reservation_name
      t.integer :people_count

      t.timestamps
    end
  end
end
