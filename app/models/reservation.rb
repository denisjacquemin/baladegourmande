class Reservation < ActiveRecord::Base
  belongs_to :schedule
  
  validates_presence_of     :telephone, :firstname, :lastname, :street, :number, :postal_code, :location, :nb_adult, :nb_child, :schedule_id
  
  named_scope :confirmed, :conditions => { :confirm => true }, :order => 'created_at desc'
  
  def schedule_label
    self.schedule.label
  end
end
