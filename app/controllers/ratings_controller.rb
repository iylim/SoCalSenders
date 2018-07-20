class RatingsController < ApplicationController
    before_action :authorize, except: [:index, :show]
    
    def index
        @ratings = Rating.all
    end

    def create
        @rating = Rating.new(score: params[:score].to_i)
        @rating.user = current_user
        @rating.route_id = params[:route_id]
        if @rating.save
            redirect_to route_path(params[:route_id])
        else
            redirect_to route_path(params[:route_id])
        end
    end

    def show
    end
end