class User < ApplicationRecord
    # This line required for bcrypt
    has_secure_password
    has_many :trips  
    #Adds methods to set and authenticate against a BCrypt password
    validates :username, :email, uniqueness: { case_sensitive: false }
end