class CartItem < ApplicationRecord
    validates :qty,
        presence: true,
        numericality: { only_integer: true }
end
