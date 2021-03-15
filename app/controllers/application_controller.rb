class ApplicationController < ActionController::Base
    include ApplicationHelper #gives us access to the helper method in that module 


    private 
    def redirect_if_not_logged_in
        redirect_to '/login' if !logged_in?

    end
end
