class Sneaker < ApplicationRecord
    #relationships 
    #validations
    validates :price ,presence: true

    #add custome reader /writer methods 


    def brand_and_colors
        "#{self.brand} - #{self.color} "

    end

    def self.order_by_price 
        self.order(price: :desc)

    end 

    def self.most_expensive_sneakers
        where("price > 100 ")
    end

   
end
