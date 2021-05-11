class User < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i,
                                              message: 'need to enter a valid email' }
  validates :password, presence: true
end
