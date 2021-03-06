class User < ApplicationRecord
    has_secure_password

    has_many :categories
    has_many :comments 
    has_many :message_boards, through: :comments

    validates :name, presence: true
    validates :password, presence: true

end
