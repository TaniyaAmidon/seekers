class AddNameToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :name, :string
  end
end
