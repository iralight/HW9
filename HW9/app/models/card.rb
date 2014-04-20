class Card < ActiveRecord::Base
	belongs_to :user
	validates :number, presence: true
	#, message: "Number is required"
	validates :exp_date, presence: true
	#, message: "Expiration date is required"
	validates :card_type, presence: true
	#, message: "Card type is required"
	validates :card_type, inclusion: {in: ["Visa", "AMEX", "MasterCard"]}
	#,message: "We only accept Visa, AMEX or MasterCard"
	validates :user_id, presence: true
	#, message: "User id is required"
	validates :exp_date, length: {minimum:7, maximum:7}
	#, message: "Wrong format for expiration date"
	validates :number, numericality: true
	#,message: "Number has to be numeric"
	validates :number, uniqueness: true
	#, message: "Number has to be unique"
end
