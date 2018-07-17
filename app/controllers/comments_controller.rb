class CommentsController < ApplicationController
    def new
        @comment = Comment.new
    end
    def create
        route_id = params['comment']['route_id'].to_i
        @comment = Comment.new(comment_params)
        @comment.user_id = current_user
       if @comment.save
        redirect_to "/routes/#{route_id}"
       else
        redirect_to "routes/#{route_id}/comments/new"
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
