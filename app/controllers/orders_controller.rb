class OrdersController < ApplicationController
    before_action :authenticate_user!
     
    def index
        # all the orders made by users
        @orders = Order.all
    end
  
    def show
        @order = Order.find(params[:id])
    end
  
    def new
    end
  
    def create
    end
  
    def destroy
    end

end

