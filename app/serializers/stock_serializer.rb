class StockSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :ticker, :description, :amount
  belongs_to :category
end
