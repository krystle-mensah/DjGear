class PaymentsController < ApplicationController
    def create
    	token = params[:stripeToken]
        @product = Product.find(params[:product_id])
        @user = current_user

        begin
            charge = Stripe::Charge.create(
                amount: (@product.price * 100).to_i,
                currency: "gbp",
                source: token,
                description: params[:stripeEmail]
            )
        
        if charge.paid
            Order.create(product_id: @product.id, user_id: @user.id,
				product_id: @product.id,
				user_id: @user.id,
                total: @product.price.to_i)
            
            flash[:success] = "Your payment was processed successfully"
        end


        # The card has been declined
        rescue Stripe::CardError => e
            
        

        end #begin

        redirect_to product_path(@product)
    end #create
end # class