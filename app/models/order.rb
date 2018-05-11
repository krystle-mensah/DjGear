class Order < ApplicationRecord
    # relationship between our orders and our products
    belongs_to :product
    belongs_to :user
end