class AddNbReservationsFieldsToReservations < ActiveRecord::Migration
  def self.up
    change_table :reservations do |t|
      t.integer :nb_adult
      t.integer :nb_child
    end
  end

  def self.down
    change_table :reservations do |t|
      t.remove :nb_adult
      t.remove :nb_child
    end
  end
end
