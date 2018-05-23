class Book < ApplicationRecord
	
	validates :title, :auth, :zhanr, :pages_qty, :description, :image_url, :presence => true
	def self.search(search)
		where(['title LIKE ? OR auth LIKE ? OR zhanr LIKE ? OR description LIKE ? ', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])

	end	

end
