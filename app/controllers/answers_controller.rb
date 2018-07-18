class AnswersController < ApplicationController
    def new
        @answer = Answer.new
    end
    
    def create
        forum_id = params['answer']['forum_id'].to_i
        @answer = Answer.new(body: params['answer']['body'], forum_id: forum_id)

       if @answer.save
        render :new
       end
    end

end