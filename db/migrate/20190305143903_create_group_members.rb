class CreateGroupMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :group_members do |t|
      t.string :group
      t.references :, foreign_key: true
      t.string :user
      t.references :, foreign_key: true

      t.timestamps
    end
  end
end
