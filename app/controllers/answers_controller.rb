class AnswersController < ApplicationController
    before_action :authorize, only:[:create, :new]

    def new
        @answer = Answer.new
    end
    
    def create
        # @answer.forum_id = params[forum: @forum]
        @answer = Answer.new(answer_params)
        @answer.forum_id = params[:forum_id]
       if @answer.save
            redirect_to forum_path(params[:forum_id])
        else
            redirect_to forum_path(params[:forum_id])
        end
    end

    def show 
        @answer = Answer.find(params[:id])
    end

    private

    def answer_params
        params.require(:answer).permit(:body, :forum_id, :user_id)
    end
end
