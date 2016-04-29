class ProductsController < ApplicationController
	def index
		@products = Product.products_list 
	end

	def new
	end

	def create
		user = User.find_by_id(1)
		product = user.products.new(entry_params)
		product.save
		redirect_to("/")
	end

	def show
		@product = Product.find_by_id(params[:product][:id])
	end
	private
	def entry_params
		 #coge el hash de time entry y con permit le decimos lo que permitimos en la bbdd, los de rails los admite por defecto
		params.require(:product).permit(:title, :description, :deadline, :user_id)
	end
end
