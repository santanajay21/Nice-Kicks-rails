class Sneaker < ApplicationRecord
    #relationships 
    #validations
    belongs_to :brand
    belongs_to :user
    has_many :favorites
    has_many :users , through: :favorites
    #accepts_nested_attributes_for :brand

    def brand_attributes=(hash_of_attributes)
        # hash_of_attributes = {"name"=>"Puma", "year_founded"=>"1971"}
        #find or create a brand based on the attributes sent in
        if !hash_of_attributes[:name].blank? && !hash_of_attributes[:year_founded].blank?
            self.brand = Brand.find_or_create_by(hash_of_attributes)
        end
    end

    validates :price ,presence: true, numericality: {greater_than: 0 } 
    validates :color,presence: true, two_word: true, uniqueness: {scope: [:brand], message: "has already been used with brand and price"}
    validates :brand ,presence: true, length: {minimum: 2, message: "should have more thean two characters"}
    validates :condition ,presence: true

    #custom  validation can go in models/concerns and then apply it here 
    #validations in the model should be sp[acific just to that class

    #add custome reader /writer methods 


    def brand_id_and_colors
        "#{self.brand_id.try(:name)} - #{self.color} "  

    end

    def self.order_by_price 
        self.order(price: :desc)                       #scope method ,getting specific information from the db

    end 

    def self.most_expensive_sneakers
        where("price > 100 ")
    end

   
end
