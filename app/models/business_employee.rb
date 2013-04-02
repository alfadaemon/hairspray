class BusinessEmployee < ActiveRecord::Base
  belongs_to :employee, :foreign_key => "employee_id"
  belongs_to :business, :foreign_key => "business_id"
  attr_accessible :business_id, :employee_id
end
