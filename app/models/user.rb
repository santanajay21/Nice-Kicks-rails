class User < ApplicationRecord
    has_secure_password 
    has_many :favorites
    has_many :sneakers , through: :favorites
    #validate the presence of passwprd 
    #password=,.authenticate ,.password (the methods that are given)
    #validates :username, presence: true, on: update 
end

#class User < ApplicationRecord
#has_secure_password 
#has_many :favorites 
#has_many :sneakers , through: :favorites
#end
