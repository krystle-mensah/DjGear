class ProductsController < ApplicationController
	before_action :set_product, only: [:show, :edit, :update, :destroy]

	def index
			#if Rails.env.development?
			#byebug
			#end 
		if params[:q]
			search_term = params[:q]
			@products = Product.search(search_term)
		else
			@products = Product.paginate(page: params[:page], per_page: 3)
		end
	end
	def show
		@comments = @product.comments.order("created_at DESC").page(params[:page]).per_page(5)
	end
	def new
		@product = Product.new
	end
	def edit
	end
	def create
		@product = Product.new(product_params)
		respond_to do |format|
			if @product.save
				format.html { redirect_to @product, notice: 'Product was successfully created.' }
				format.json { render :show, status: :created, location: @product }
			else
				format.html { render :new }
				format.json { render json: @product.errors, status: :unprocessable_entity }
			end
		end
	end #create 
	def update
		respond_to do |format|
			if @product.update(product_params)
				format.html { redirect_to @product, notice: 'Product was successfully updated.' }
				format.json { render :show, status: :ok, location: @product }
			else
				format.html { render :edit }
				format.json { render json: @product.errors, status: :unprocessable_entity }
			end
		end
  end
	def destroy
		@product.destroy
		respond_to do |format|
			format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
	def set_product
			@product = Product.find(params[:id])
	end
	def product_params
			params.require(:product).permit(:name, :description, :image_url, :colour, :price)
	end
end