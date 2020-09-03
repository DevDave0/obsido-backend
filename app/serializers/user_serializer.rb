class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name
  has_many :categories
  has_many :comments 
  has_many :message_boards, through: :comments
end

