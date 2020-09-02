class Category < ApplicationRecord
    belongs_to :user
    has_many :sub_categories 
    has_many :stocks 
    has_many :cryptos
end
