class CategorySerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description, :amount


  has_many :user_categories 
  has_many :users, through: :user_categories
  has_many :sub_categories 
  has_many :stocks 
  has_many :cryptos

end
