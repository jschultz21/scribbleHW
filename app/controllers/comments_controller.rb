class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to @post
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to @post
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])

    if @comment.update(comments_params)
      redirect_to post_path(@post)
    else
      render 'edit'
    end


    private
    def comment_params
      params.require(:comment).permit(:body, :user_id, :post_id, :etc)
    end

  end
  #
  #
  # def create
  #   @post = Post.create(article_params)
  #   redirect_to @post
  # end

  #
  # @comment = Comment.create(post_id: params[:post_id])
  # @comment = @post.comments.create(comment_params)
