class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :game_id
      t.date :starting_date
      t.date :ending_date
      t.string :status

      t.timestamps
    end
  end
end
