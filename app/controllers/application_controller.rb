class ApplicationController < ActionController::Base
    include ApplicationHelper #gives us access to the helper method in that module 


    private 
    def redirect_if_not_logged_in
        redirect_to '/login' if !logged_in?

    end



    def find_brand_id
        params[:brand_id] && @brand = Brand.find(params[:brand_id])
    end 

    def find_that_sneaker
        @sneaker = Sneaker.find(params[:id])
    end 


end
