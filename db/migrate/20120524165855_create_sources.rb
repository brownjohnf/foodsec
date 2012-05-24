class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :last_name
      t.string :first_name
      t.integer :region
      t.integer :site
      t.integer :sector
      t.integer :phone
      t.string :email

      t.timestamps
    end
  end
end
