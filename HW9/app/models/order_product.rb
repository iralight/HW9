class OrderProduct < ActiveRecord::Base
	belongs_to :proudct
	belongs_to :order
	validates :product_id, presence: true
	#, message: "Product id is required"
	validates :order_id, presence: true
	#, message: "Order id is required"
	validates :quantity, presence: true
	#, message: "Quantity is required"
	validates :quantity, numericality: true
	#, message: "Quantity has to be a number"
end
