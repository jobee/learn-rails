class ListItem < ActiveRecord::Base
	attr_accessible :amount,
					:unit,
					:done, 
					:product,
					:product_attributes
 
	belongs_to :list
	belongs_to :product

	accepts_nested_attributes_for :product, 
	                              :reject_if => :all_blank

end
