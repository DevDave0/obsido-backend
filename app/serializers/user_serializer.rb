class UserSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name 

  has_many :user_categories 
  has_many :categories, through: :user_categories
  has_many :comments 
  has_many :message_boards, through: :comments
end
