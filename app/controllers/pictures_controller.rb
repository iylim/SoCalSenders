class PicturesController < ApplicationController
    def index 
        @pictures = Picture.all
    end
    
    def new
        @pictures = Picture.new
    end

    def create
        route = Route.create! params.require(:route).permit(:name)
        route.image.attach(params[:route][:image])
        redirect_to routes  
    end

    def show 
        @pictures = Picture.find(params[:id])
    end
end