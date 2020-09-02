class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :amount
  has_many :categories
  has_many :comments 
  has_many :message_boards, through: :comments
end

