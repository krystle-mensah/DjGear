class Product < ApplicationRecord
    has_many :orders
    has_many :comments
    
    def self.search(search_term)
        like_string = Rails.env.production? ? "ilike" : "LIKE"
        Product.where("name #{like_string} ?", "%#{search_term}%")
    end
    # below code - custom method for our product to return the comment with the highest rating.
    def highest_rating_comment
        comments.rating_desc.first
    end
    
    def lowest_rating_comment
        comments.rating_asc.first
    end 
end 