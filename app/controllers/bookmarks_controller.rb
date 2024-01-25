class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def show
    @bookmarks = Bookmarks.all
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:name)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
