# meaning it has access to all the methods inside your application_controller.rb file
class OrdersController < ApplicationController 
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

