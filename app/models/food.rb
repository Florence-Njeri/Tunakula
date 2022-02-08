class Food < ApplicationRecord
    attr_accessor :food
    validates :title, presence: true
    validates :price, presence: true 
end
