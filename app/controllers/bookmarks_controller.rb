class BookmarksController < ApplicationController
  def new
    @bookmarks = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to bookmark_path(@bookmark)
  end

  # def edit
  #   @task = Task.find(params[:id])
  # end

  # def update
  #   @task = Task.find(params[:id])
  #   @task.update(task_params)
  #   redirect_to task_path(@task)
  # end

  # def destroy
  #   @task = Task.find(params[:id])
  #   @task.destroy
  #   redirect_to tasks_path, status: :see_other
  # end

  # private

  def task_params
    params.require(:bookmark).permit(:comment)
  end
end
