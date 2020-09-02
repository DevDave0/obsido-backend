class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :comment

  belongs_to :user 
  belongs_to :message_board
end
