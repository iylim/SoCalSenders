class BookmarksController < ApplicationController
    def index
        @bookmarks = current_user.bookmarks
    end
    
    def destroy
        route = params[:id]
        current_user.bookmarks.delete(route)
        redirect_to user_bookmarks_path(current_user.id)
    end
end