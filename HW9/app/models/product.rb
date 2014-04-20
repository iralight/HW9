class Product < ActiveRecord::Base
	has_many :order_products
	has_many :orders, :through => :order_products
	validates :name, presence: true
	#, message: "Name is required"
	validates :price, presence: true
	#, message: "Price is required"
	validates :name, length: {minimum: 20, maximum: 100}
	#,message: "Name is either too short or too long"
	validates :price, numericality: true
	#, message: "Price is a number"
end
