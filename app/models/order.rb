class Order < ApplicationRecord
    # relationship between our orders and our products
    belongs_to :product
end