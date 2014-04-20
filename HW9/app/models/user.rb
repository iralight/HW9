class User < ActiveRecord::Base
	has_many :cards
	validates :name, presence: true
	#validates :name, :presence => {:message => "Name is required"}
	
	validates :email, presence: true
	#validates :email, :presence => {:message => "Email is required"}
	
	validates :password, presence: true
	#validates :password, :presence => {:message => "Password is required"}
	
	validates :name, length: {minimum: 3, maximum: 50}
	
	validates :email, length: {maximum: 70}
	
	validates :password, length: {maximum: 70}
	
	validates :email, uniqueness: true
	#validates :email, :uniqueness => {:message => "Email has to be unique"}
end
