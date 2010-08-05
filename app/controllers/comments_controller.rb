class CommentsController < ApplicationController
  
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end 
  
  def create
    @comment = Comment.create(params[:post])
  end
  
  def show
    @comment = Comment.find(params[:id])
  end
end