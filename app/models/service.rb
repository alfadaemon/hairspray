class Service < ActiveRecord::Base
  belongs_to :category, :foreign_key => "category_id"
  attr_accessible :description, :category_id
end
