class CategorySerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description, :amount, :created_at
  belongs_to :user
  has_many :sub_categories 
  has_many :stocks 
  has_many :cryptos

end
