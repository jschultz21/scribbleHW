class CommentsController < ApplicationController

  def new
    @comment = Comment.new(post_id: params[:post_id])
  end
  
  def create
      @comment = Comment.new(comment_params)
  end

  private
  def comment_params
       params.require(:comment).permit(:user_id, :post_id, :etc)
  end
end

end
