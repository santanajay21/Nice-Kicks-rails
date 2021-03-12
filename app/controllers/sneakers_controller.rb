class SneakersController < ApplicationController

    def index
        @sneakers = Sneaker.all 
    end 


    def show
        @sneaker = Sneaker.find(params[:id])
    end 

    def most_expensive
        @sneakers = Sneaker.most_expensive_sneakers.order_by_price
        render :index 
    end 


end 