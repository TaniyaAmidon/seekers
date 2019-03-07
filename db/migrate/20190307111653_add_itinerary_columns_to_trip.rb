class AddItineraryColumnsToTrip < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :start_date, :date
    add_column :trips, :end_date, :date
    add_column :trips, :organiser_exp, :text
    add_column :trips, :visited_before, :boolean
    add_column :trips, :crew_exp, :text
    add_column :trips, :crew_exp_required, :boolean
    add_column :trips, :max_crew_size, :integer
    add_column :trips, :photo, :string
  end
end
