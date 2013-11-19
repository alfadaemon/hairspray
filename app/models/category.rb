class Category < ActiveRecord::Base
	validates_presence_of :name, :message => "Required field!"
  	attr_accessible :description, :name
  	has_many :services
end
