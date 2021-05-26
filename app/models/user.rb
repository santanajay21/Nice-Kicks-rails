class User < ApplicationRecord
    has_secure_password 
    has_many :favorites
    has_many :sneakers , through: :favorites


    # validates :username , :password , presence: true
    #  validates :username, uniqueness: true
    #     {message: 'An account associated with %{value} already exists'}

    #validate the presence of passwprd 
    #password=,.authenticate ,.password (the methods that are given)
    #validates :username, presence: true, on: update 
end


