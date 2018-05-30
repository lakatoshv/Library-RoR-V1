class Vidguk < ApplicationRecord
	def self.search(search)
		where([' title_book LIKE ? ', "%#{search}%"])

	end
end
