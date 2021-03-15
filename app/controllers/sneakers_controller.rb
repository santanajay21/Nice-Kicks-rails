class SneakersController < ApplicationController

    layout "sneaker"
    
    def index
        #check if the request is a nested route 
        if params[:brand_id] && @brand = Brand.find(params[:brand_id])
            @sneakers = @brand.sneakers
        else
            @sneakers = Sneaker.all 
        end 
    end 


    def show
        @sneaker = Sneaker.find(params[:id])
    end 

    def most_expensive
        @sneakers = Sneaker.most_expensive_sneakers.order_by_price
        render :index 
    end 

    def new 
        if params[:brand_id] && @brand = Brand.find(params[:brand_id])
            #instantiate a sneaker with the brand already assigend 
            @sneaker = Sneaker.new(brand_id: params[:brand_id])
        else
            @sneaker = Sneaker.new
            @sneaker.build_brand
        end
    end 

    def create 
        @sneaker = Sneaker.new(sneaker_params)
        if params[:brand_id] #if its nested 
            @brand = Brand.find(params[:brand_id])# give it an @brand variable 
        end

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
        params.require(:sneaker).permit(:brand,:price,:condition,:color, :brand_id, brand_attributes: [:name, :year_founded])
    end 

end 