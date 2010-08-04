class CommentsController < ApplicationController
  
  def new
    @comment = Post.new
  end 
  
  def create
    @comment = Post.create(params[:post])
  end
  
  def show
    @comment = Post.find(params[:id])
  end
end