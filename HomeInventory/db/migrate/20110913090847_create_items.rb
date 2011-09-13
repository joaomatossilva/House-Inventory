class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :id
      t.string :name
      t.references :box

      t.timestamps
    end
    add_index :items, :box_id
  end
end
