class WelcomeController < ApplicationController
    def index
      @users = User.all
    end

    def show
      @user = User.find(params[:id])
    end

    def about
    end
    
  end