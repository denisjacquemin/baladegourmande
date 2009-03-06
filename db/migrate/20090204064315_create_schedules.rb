class CreateSchedules < ActiveRecord::Migration
  def self.up
    create_table :schedules do |t|
      t.string :label, :limit => 100, :default => '', :null => true
      t.integer :position
      t.boolean :active, :default => true, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :schedules
  end
end
