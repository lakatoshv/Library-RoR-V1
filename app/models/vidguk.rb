class Vidguk < ApplicationRecord
	belongs_to :book
	belongs_to :user
	def self.search(search)
		where([' title_book LIKE ? ', "%#{search}%"])

	end
end
