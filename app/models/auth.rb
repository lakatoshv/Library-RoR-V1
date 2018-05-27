class Auth < ApplicationRecord
	validates :auth, :book, :presence => true
end
