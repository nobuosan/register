class ApplicationController < ActionController::Base
    before_action:get_category
    def get_category
       @categories = Category.all 
    end
    protect_from_forgery with: :exception
    include SessionsHelper

end
