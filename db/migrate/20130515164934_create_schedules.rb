class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.datetime :deadline_at
      t.string :summary
      t.text :description
      t.text :notes

      t.timestamps
    end
  end
end
