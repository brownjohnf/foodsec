class CreateIndicators < ActiveRecord::Migration
  def change
    create_table :indicators do |t|
      t.string :name
      t.string :question
      t.integer :survey_id

      t.timestamps
    end
    add_index :indicators, :name, :unique => true
    add_index :indicators, :question, :unique => true
  end
end
