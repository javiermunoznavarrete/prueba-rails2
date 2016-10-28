class User < ActiveRecord::Base
	has_many :item

	validates :name, presence: true
	validates :email, uniqueness: true

	before_save :first_mayus

	def first_mayus
		:name.capitalize
	end
end
