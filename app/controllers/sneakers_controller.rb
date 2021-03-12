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

    def new 
        @sneaker = Sneaker.new
    end 

    def create 
        @sneaker = Sneaker.new(sneaker_params)
        if @sneaker.save 
            redirect_to sneakers_path 
        else
            render :new 
        end
    end

    def edit 
        @sneaker = Sneaker.find(params[:id])
    end 

    def update 
        @sneaker = Sneaker.find(params[:id])
        @sneaker.update(sneaker_params)
        if @sneaker.valid?
            redirect_to sneakers_path
        else 
            render :edit
        end 
    end 


    def destroy
        @sneaker = Sneaker.find(params[:id])
        @sneaker.destroy 
        redirect_to sneakers_path
    end

    private 

    def sneaker_params
        params.require(:sneaker).permit(:brand,:price,:condition,:color)
    end 

end 