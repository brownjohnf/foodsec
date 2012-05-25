class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :last_name
      t.string :first_name
      t.integer :region_id
      t.integer :site_id
      t.integer :sector_id
      t.string :phone
      t.string :email

      t.timestamps
    end
    add_index :sources, :email, :unique => true
    add_index :sources, :phone, :unique => true
  end
end
