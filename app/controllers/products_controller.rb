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

    end
    def update

    end
    def destroy

    end

    private
    

end
