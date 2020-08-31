class StockSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id
end
