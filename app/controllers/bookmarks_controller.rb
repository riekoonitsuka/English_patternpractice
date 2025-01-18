class BookmarksController < ApplicationController
  def create
    @practice = Practice.find(params[:practice_id])
    current_user.bookmark(@practice)
  end

  def destroy
    @practice = current_user.bookmarks.find(params[:id]).practice
    current_user.unbookmark(@practice)
  end
end
