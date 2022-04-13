class User < ApplicationRecord
    has_secure_password
    has_many :trips  
    #Adds methods to set and authenticate against a BCrypt password
    validates :username, :email, uniqueness: { case_sensitive: false }
end