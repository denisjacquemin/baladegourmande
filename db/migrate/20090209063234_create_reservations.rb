class CreateReservations < ActiveRecord::Migration
  def self.up
    create_table :reservations do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :street
      t.string :number
      t.string :postal_code
      t.string :location
      t.integer :schedule_id
      t.text :comment
      t.string :group_name

      t.timestamps
    end
  end

  def self.down
    drop_table :reservations
  end
end
