require 'rails_helper'
# to tell RSpec which model we want to test

RSpec.describe Product, :type => :model do
	context "when the product has comments" do

		let(:product) { Product.create!(name: "custom bike", description: "awesome bike", colour: "red" ) }

		let (:user) {User.create(first_name: "Mark", last_name:"Johnson", email: "MPrice3@hotmail.com", password: "23478734")}


		before do
		    product.comments.create!(rating: 1, user: user, body: "Awful bike!")
		    product.comments.create!(rating: 3, user: user, body: "Ok bike!")
		    product.comments.create!(rating: 5, user: user, body: "Great bike!")
		end


		it "returns the average rating of all comments" do
			expect(product.average_rating).to eq 3
		end

		
		it "is not valid without a name" do
	        expect(Product.new(description: "cool bike")).not_to be_valid
	    end



     end 
end
