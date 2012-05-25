class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.integer :region_id

      t.timestamps
    end
    add_index :sites, :name
    add_index :sites, :region_id
    add_index :sites, [ :name, :region_id ], :unique => true
  end
end
