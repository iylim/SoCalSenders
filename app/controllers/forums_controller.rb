class ForumsController < ApplicationController
    before_action :authorize

    def index
        @forums = Forum.all
    end

    def new
        @forum = Forum.new
    end

    def create
        @forum = Forum.new(title: params['forum']['title'], body: params['forum']['body'])
        @forum.user = current_user
        if @forum.save 
            redirect_to forums_path
        else 
            redirect_to '/forum/new'
        end
    end

    def show
        @forum = Forum.find(params[:id])
        @answer = Answer.new(forum_id: @forum.id)
        @answers = @forum.answers
    end
end