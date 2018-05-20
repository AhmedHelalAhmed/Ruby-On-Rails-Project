class CommentsController < ApplicationController
  def create
    @lecture = Lecture.find(params[:lecture_id])

    @comment = @lecture.comments.new(comment_params)
    @comment.save
    redirect_to lecture_path(@lecture)

    end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
