class AddTitleToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :title, :string
  end
end
