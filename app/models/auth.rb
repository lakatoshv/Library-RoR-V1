class Auth < ApplicationRecord
	def self.search(search)
		where([' auth LIKE ? ', "%#{search}%"])

	end	
end
