class StockSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :ticker, :price, :description, :amount


  belongs_to :category
end
