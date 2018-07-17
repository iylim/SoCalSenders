class RoutesController < ApplicationController
    def index 
        @routes = Route.all
    end
    
    def new
        @route = Route.new
    end

    def create
        @route = Route.new(route_params)
        @route.user = current_user
        @route.pictures.attach(params[:route][:pictures])
        if @route.save 
            redirect_to routes_path
        else 
            render :new
        end
          
    end

    def update
        @route = Route.find(params[:id])
        if params[:route][:pictures]
            @route.pictures.attach(params[:route][:pictures])
        end

        if @route.update(route_params)
            redirect_to route_path(@route)
        else
            redirect_back
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
        params.require(:route).permit(:name, :difficulty, :route_type, :pitches, :description, :pictures)
    end
end
