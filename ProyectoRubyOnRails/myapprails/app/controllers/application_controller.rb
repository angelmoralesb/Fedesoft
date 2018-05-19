class ApplicationController < ActionController::Base
    #http_basic_authenticate_with name: "fatos", password: "secure_password", except: :index  protect_from_forgery with: :exception end 
    protect_from_forgery with: :exception
    include SessionsHelper
end
