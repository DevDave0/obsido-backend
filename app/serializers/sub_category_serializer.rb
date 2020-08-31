class SubCategorySerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id
end
