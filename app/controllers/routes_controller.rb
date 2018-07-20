class RoutesController < ApplicationController
    def index 
        @routes = Route.all
        if params[:search]
            @routes = Route.search(params[:search]).order("name DESC")
          else
            @routes = Route.all.order("name DESC")
          end
    end
    
    def new
        @route = Route.new
    end

    def create
        @route = Route.new(route_params)
        @route.user = current_user
        if params[:route][:pictures]
            @route.pictures.attach(params[:route][:pictures])
        end
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

    def bookmark
        route = Route.find(params[:id])
        current_user.bookmarks.create(route_id: route.id)
        redirect_to route_path(route.id)
    end

    private

    def route_params
        params.require(:route).permit(:name, :difficulty, :route_type, :pitches, :description, :pictures, :user_id, :location)
    end
end
