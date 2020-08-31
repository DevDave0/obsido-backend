class CommentSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id
end
