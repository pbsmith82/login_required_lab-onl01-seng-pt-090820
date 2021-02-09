class SecretsController < ApplicationController
    before_action :require_login

    def index
    end

    def show
        @user = session[:name]
    end

    private
 
    def require_login
      #return head(:forbidden) && 
      redirect_to '/login' unless session.include? :name
    end

end
