# in order to get access to the configuration we need to write RSpec tests.
require 'rails_helper'

context "when the product has comments" do

# to tell RSpec which model we want to test
	describe Product do
		let(:product) { Product.create!(name: "custom bike", description: "awesome bike", colour: "red", price: "290") }


		let(:user) { User.create!(email: "random@emil.com",first_name: "User", last_name: "random",admin: false, password: "Yellow123") }


		before do
		    product.comments.create!(rating: 1, user: user, body: "Awful bike!")
		    product.comments.create!(rating: 3, user: user, body: "Ok bike!")
		    product.comments.create!(rating: 5, user: user, body: "Great bike!")
		end


		it "returns the average rating of all comments" do
			expect(product.average_rating).to eq 3
		end


		it "is not valid without a name" do
	        expect(Product.new(description: "")).not_to be_valid
	    end
     end 
end