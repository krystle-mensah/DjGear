class Product < ApplicationRecord
    has_many :orders
    has_many :comments
# Let’s add a validation to the Product model that requires all new products to have a name provided.
    validates :name, presence: true

    def self.search(search_term)
        like_string = Rails.env.production? ? "ilike" : "LIKE"
        Product.where("name #{like_string} ?", "%#{search_term}%")
    end

    # rate the first commit in descending order
    def highest_rating_comment
        comments.rating_desc.first
    end

    # rate first commit ascending order
    def lowest_rating_comment
        comments.rating_asc.first
    end

    def average_rating
        comments.average(:rating).to_f
    end

    def highest_rating_body
        comments.rating_desc.first.body
    end
end
