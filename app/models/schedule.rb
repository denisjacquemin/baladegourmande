class Schedule < ActiveRecord::Base
  validates_presence_of     :label
  validates_presence_of     :active
  validates_uniqueness_of   :position
  
  acts_as_list

  has_many :reservations
  
  named_scope :active, :conditions => { :active => true }, :order => 'position asc'
  
end
