class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :indicator_id
      t.string :content

      t.timestamps
    end
    add_index :answers, :content
    add_index :answers, :indicator_id
    add_index :answers, [ :content, :indicator_id ], :unique => true
  end
end
