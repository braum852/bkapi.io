class User < ApplicationRecord
    has_secure_password
    has_many :trips  
    #Adds methods to set and authenticate against a BCrypt password
    validates :email, uniqueness: true
    validates :username, uniqueness: true
    # validates :password, length: { minimum: 3 }
end