class BookmarksController < ApplicationController
  def create
    @practice = Practice.find(params[:practice_id])
    current_user.bookmark(@practice)
    redirect_to practices_path, success: "Bookmarked"
  end

  def destroy
    @practice = current_user.bookmarks.find(params[:id]).practice
    current_user.unbookmark(@practice)
    redirect_to practices_path, success: "unbookmarked", status: :see_other
  end
end
