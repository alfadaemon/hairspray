class Business < ActiveRecord::Base
	validates_presence_of :name, :message => "Required field!"
  	attr_accessible :address, :lat, :lon, :name
end
