class Book < ApplicationRecord
	#Валідність даних
	

	#before_destroy :ensure_not_referenced_by_any_line_item

	validates :title, :auth, :zhanr, :pages_qty, :description, :image_url, :presence => true
end
