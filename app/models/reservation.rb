class Reservation < ActiveRecord::Base
  belongs_to :schedule
  
  validates_presence_of     :firstname, :lastname, :street, :number, :postal_code, :location, :nb_adult, :nb_child, :schedule_id
end
