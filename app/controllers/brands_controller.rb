class BrandsController < ApplicationController

    def index
        @brands = Brand.all 
    end

    def show
        @brand = Brand.find(params[:id])
    end

    def new
        @brand = Brand.new
        3.times { @brand.shoes.build } #has_many
    end

    def create
        @brand = Brand.new(brand_params)
        if @brand.save 
            redirect_to brand_path(@brand)
        else
            render :new
        end
    end

    private

    def brand_params
        params.require(:brand).permit(:name, :year_founded, shoes_attributes: [:price,:color,:condition])
    end
end