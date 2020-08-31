class CryptoSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id
end
