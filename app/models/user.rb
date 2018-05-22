class User < ApplicationRecord
	attr_accessible :name, :password, :password_confirmation

	validates :name, :presence => true, 
					 :length => {:maximum => 50}
	validates :password,  :presence => true, 
						  :confirmation => true, 
						  :length => {:within => 6..40}
end
