class User < ApplicationRecord
    has_secure_password #validate the presence of passwprd 
    #password=,.authenticate ,.password (the methods that are given)
    #validates :username, presence: true, on: update 
end
