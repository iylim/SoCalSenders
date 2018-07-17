class RatingsController < ApplicationController
    def new
        @rating = Rating.new
    end

    def create
        route_id = params['rating']['route_id'].to_i
        @rating = Rating.new(comment_params)
        @rating.user_id = current_user
       if @rating.save
        redirect_to "/routes/#{route_id}"
       else
        redirect_to "routes/#{route_id}/ratings/new"
       end
    end

    def show 
        @rating = Rating.find(params[:id])
    end
end