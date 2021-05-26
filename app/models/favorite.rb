class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :sneaker

    


   validates :notes , presence: true  #need validations

end
