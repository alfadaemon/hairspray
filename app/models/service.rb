class Service < ActiveRecord::Base
	validates_presence_of :description, :message => "Required field!"
	belongs_to :category
  	attr_accessible :description
end
