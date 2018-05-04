class ProductsController < ApplicationController
    def index
        @products = Product.all
    end 
    
    def show 

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
    end
    def update

    end
    def destroy

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
