class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :schedule_id
      t.string :content
      t.boolean :complete

      t.timestamps
    end
  end
end
