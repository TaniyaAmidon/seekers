class AddDateToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :trip_date, :date
    add_column :trips, :days, :integer
  end
end

