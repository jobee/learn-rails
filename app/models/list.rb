class List < ActiveRecord::Base
	#attr_accessor :name
	validates_presence_of :name

	attr_accessible :name, 
                  	:description,
                  	:list_items_attributes
 
	has_many :list_items
	has_many :products, 
	       	 :through => :list_items

	accepts_nested_attributes_for :list_items, 
	       						  :reject_if => :all_blank, 
	       						  :allow_destroy => true
	accepts_nested_attributes_for :products
end
