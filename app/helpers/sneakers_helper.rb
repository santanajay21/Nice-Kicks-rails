module SneakersHelper

    def display_index_header
        if @brand 
            content_tag(:h1, "#{@brand.name} Sneakers")
         else 
            content_tag(:h1, "All Sneakers") 
        end 
    end





    def display_new_header
        if @brand 
            content_tag(:h1, "Add a #{@brand.name} Sneaker")
         else 
            content_tag(:h1, "Add a Sneaker") 
        end 
    end


end
