class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.text :description
      t.references :group, foreign_key: true
      t.string :destination
      t.references :user, foreign_key: true
      t.integer :price
      t.timestamps
    end
  end
end
