class Employee < ActiveRecord::Base
  attr_accessible :id_number, :last_name, :name
end
