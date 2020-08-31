class MessageBoardSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id
end
