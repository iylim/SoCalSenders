class CommentsController < ApplicationController
    before_action :authorize, only: [:create, :new]
    before_action :authorize, except: [:index, :show]
    
    def new
        @route = Route.find(params[:route_id])
        @comment = Comment.new(route_id: @route.id)
    end

    def create
        @comment = Comment.new(comment_params)
        @comment.user = current_user
        @comment.route_id = params[:route_id]
       if @comment.save
        redirect_to route_path(params[:route_id])
       else
        redirect_to new_route_comment_path(params[:route_id])
       end
    end

    def show 
        @comment = Comment.find(params[:id])
    end

    private

    def comment_params
        params.require(:comment).permit(:title, :body, :route_id, :user_id)
    end
end
