class LandingPagesController < ApplicationController
    # This method will retrieve the first product in the Products table and set it to a variable called @featured_product 
    def index
        @featured_product = Product.first
    end

end

