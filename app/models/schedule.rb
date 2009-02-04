class Schedule < ActiveRecord::Base
  validates_presence_of     :label
  validates_presence_of     :active
  validates_uniqueness_of   :position
end
