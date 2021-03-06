class ListItem < ActiveRecord::Base

	belongs_to :list
	belongs_to :product

	accepts_nested_attributes_for :product, 
	                              :reject_if => :all_blank,
	                              :allow_destroy => true

end
