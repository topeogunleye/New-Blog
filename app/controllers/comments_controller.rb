class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:article_id])
    @comment = @post.comments.create(comment_params)
    redirect_to user_post_path(@post)
  end

  private
    def comment_params
      params.require(:comment).permit(:text)
    end
end
