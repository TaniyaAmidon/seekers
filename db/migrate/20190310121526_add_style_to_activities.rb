class AddStyleToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :style, :string
  end
end
