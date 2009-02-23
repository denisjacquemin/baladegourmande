class Reservation < ActiveRecord::Base
  belongs_to :schedule
  
  validates_presence_of     :firstname, :lastname, :street, :number, :postal_code, :location, :nb_adult, :nb_child
  validates_uniqueness_of   :email, :case_sensitive => false
  validates_numericality_of :nb_adult, :nb_child
end
