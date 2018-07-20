class PaymentsController < ApplicationController
    def create
    	token = params[:stripeToken]
        @product = Product.find(params[:product_id])
        @user = current_user

        begin
            charge = Stripe::Charge.create(
                amount: (@product.price).to_i, #amount in cents
                currency: "gbp" 
                #unit: '£',
                source: token,
                description: params[:stripeEmail]
            )
        
        if charge.paid
            Order.create(
                product_id: @product.id, 
                user_id: @user.id, 
                total: @product.price
            )
            flash[:success] = "Your payment was processed successfully"
        end

        # The card has been declined
        rescue Stripe::CardError => e
            body = e.json_body
            err = body[:error]
            flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}" 
        end #begin

        redirect_to product_path(@product)
    end #create
end # class