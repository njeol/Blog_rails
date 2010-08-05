class CommentsController < ApplicationController
  
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end 
  
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(params[:comment].merge(:post => @post))
    if @comment.save
      redirect_to @post
    else
      render "new"
    end
  end
  
  def show
    @comment = Comment.find(params[:id])
  end
  
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end
  
end