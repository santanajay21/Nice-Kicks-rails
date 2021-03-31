class Brand < ApplicationRecord
    has_many :sneakers 
    validates :name ,presence: true

    accepts_nested_attributes_for :sneakers, reject_if: proc { |attributes| attributes['color'].blank? || attributes['condition'].blank? || attributes['price'].blank?  }
end