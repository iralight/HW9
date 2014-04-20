class Order < ActiveRecord::Base
	has_many :order_products
	has_many :products, :through => :order_products
	validates :order_date, presence: true
	#, message: "Order date is required"
	validates :order_date, length: {minimum:10, maximum:10}
	#,message: "Order date is in the wrong format"
end
