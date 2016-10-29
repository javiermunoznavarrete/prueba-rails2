class User < ActiveRecord::Base
	has_many :items, dependents: => :destroy

	validates :name, presence: true
	validates :email, uniqueness: true

	before_save :first_mayus

	def first_mayus
		self.name = self.name.capitalize
	end



end
