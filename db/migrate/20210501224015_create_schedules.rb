class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.references :schedulable, polymorphic: true
      t.timestamp :start_at, null: false
      t.timestamp :end_at, null: false
      t.boolean :ready, null: false, default: false

      t.timestamps
    end
  end
end
