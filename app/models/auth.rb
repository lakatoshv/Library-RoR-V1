class Auth < ApplicationRecord
	acts_as_votable
	def self.search(search)
		where([' auth LIKE ? ', "%#{search}%"])

	end	
end
