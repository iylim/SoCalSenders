class RoutesController < ApplicationController
    def index 
        @route = Route.all
    end
    
    def new
        @route = Route.new
    end

    def create
        @route = Route.new(route_params)
        @route.user = current_user
        if @route.save 
            redirect_to routes_path
        else 
            render :new
        end
    end

    def show 
        @route = Route.find(params[:id])
    end

    def edit
        @route = Route.find(params[:id])
    end

    private

    def route_params
        params.require(:route).permit(:name, :difficulty, :route_type, :pitches, :description, :ratings, :pictures)
    end
end
