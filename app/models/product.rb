class Product < ActiveRecord::Base
	belongs_to :user

	def self.products_list
		Product.all
	end

	def self.user_by_id(id)
		Product.find_by(id: id)
	end
end
