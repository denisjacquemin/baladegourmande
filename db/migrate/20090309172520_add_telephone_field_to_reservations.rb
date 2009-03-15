class AddTelephoneFieldToReservations < ActiveRecord::Migration
  def self.up
    change_table :reservations do |t|
      t.string :telephone
    end
  end

  def self.down
    change_table :reservations do |t|
      t.remove :telephone
    end
  end
end
