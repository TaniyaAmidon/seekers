class AddActivityToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :activity_id, :integer, :references => "activities"
  end
end
