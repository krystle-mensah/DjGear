# meaning it has access to all the methods inside your application_controller.rb file
class OrdersController < ApplicationController 
    # below code means unless you're signed in, you won't be able to access any of the order actions.
    before_action :authenticate_user

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

