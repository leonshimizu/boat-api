class CreateBoats < ActiveRecord::Migration[6.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.integer :length
      t.string :color
      t.string :boat_type

      t.timestamps
    end
  end
end
