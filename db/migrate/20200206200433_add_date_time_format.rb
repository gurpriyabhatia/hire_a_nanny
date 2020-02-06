class AddDateTimeFormat < ActiveRecord::Migration[5.2]
  def change
    remove_column  :bookings, :start_date, :integer
    remove_column :bookings, :end_date, :integer
    remove_column :bookings, :start_time, :integer
    add_column :bookings, :start_date, :datetime
    add_column :bookings, :end_date, :datetime
    add_column :bookings, :start_time, :datetime
  end
end
