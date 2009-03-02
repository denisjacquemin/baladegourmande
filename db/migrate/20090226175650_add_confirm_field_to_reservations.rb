class AddConfirmFieldToReservations < ActiveRecord::Migration
  def self.up
    change_table :reservations do |t|
      t.boolean :confirm, :default => false
    end
  end

  def self.down
    change_table :reservations do |t|
      t.remove :confirm
    end
  end
end
