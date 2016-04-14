class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :overview
      t.integer :type_id
      t.integer :user_id
      t.boolean :filled

      t.timestamps null: false
    end
  end
end
