class MessageBoardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id

  has_many :comments 
  has_many :users, through: :comments
end
