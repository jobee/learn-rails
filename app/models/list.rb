class List < ActiveRecord::Base
 
 	validates :name, presence: true

	has_many :list_items
	has_many :products, 
	       	 :through => :list_items

	accepts_nested_attributes_for :list_items, 
	       						  :reject_if => :all_blank, 
	       						  :allow_destroy => true
	accepts_nested_attributes_for :products

end
