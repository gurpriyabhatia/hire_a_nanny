class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :start_date
      t.integer :end_date
      t.string :address
      t.integer :number_of_children
      t.integer :total_price
      t.integer :duration
      t.references :user, foreign_key: true
      t.references :nanny, foreign_key: true

      t.timestamps
    end
  end
end
