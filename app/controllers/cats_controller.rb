class CatsController < ApplicationController
    def index
        @cats = Cat.all
        render :index
    end

    def show
        @cat = Cat.find(params[:id])
        render :show
    end

    def edit
        @cat = Cat.find(params[:id])
        render :edit
    end


    def update 

    end


    def new
        @cat = Cat.new
        render :new
    end

    def create

    end


    def destroy

    end

end
