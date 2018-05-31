class Book < ApplicationRecord
	belongs_to :user
	has_many :vidguks
	has_many :kritics
	belongs_to :zhanr
	validates :title, :auth, :zhanr, :pages_qty, :description, :image_url, :mini_description, :presence => true
	def self.search(search)
		where(['title LIKE ? OR auth LIKE ? OR zhanr LIKE ? OR description LIKE ? ', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])

	end	

end
