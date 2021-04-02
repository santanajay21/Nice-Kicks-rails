class Favorite < ApplicationRecord
    # need has_many or belongs_to 
    belongs_to :user
    has_many :sneakers , through: :user


   validates :notes , presence: true  #need validations

end
