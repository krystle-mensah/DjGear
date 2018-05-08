class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :destroy]
    
    def index
		if params[:q]
			search_term = params[:q]
			@products = Product.search(search_term)
		else
			@products = Product.all
		end
	end
    
    def show 
    end

	# navigating to "/products/new" will route the request to the products controller (because the first part of the URL is "products"), and it will run the new action (the second part of the URL).
	def new
		@product = Product.new
	end  

    def edit 
    end

	# The create and update actions correspond to the new and edit actions: submitting the form in the new view sends a POST request to the create action so that the product can be saved, and submitting the edit form will send a PATCH (previously PUT) request to the update action which, in turn, updates the product.
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
	end

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
		# Use callbacks to share common setup or constraints between actions.
		def set_product
				@product = Product.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
        # does the below code define the variable of the controller actions
        
        # This method acts as a whitelist filter for data that gets saved into the database—it's a security feature ensuring that users won’t be able to update fields that you don’t want them to unless allowed by your application
        
        def product_params
		params.require(:product).permit(:name, :description, :image_url, :colour)
		end   
    

end
