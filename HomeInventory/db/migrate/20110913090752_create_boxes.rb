class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.integer :id
      t.string :name
      t.references :location

      t.timestamps
    end
    add_index :boxes, :location_id
  end
end
