class UserCategorySerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id
end
