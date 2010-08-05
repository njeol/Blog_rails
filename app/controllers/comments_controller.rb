class CommentsController < ApplicationController
  
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end 
  
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(params[:comment].merge(:post => @post))
    # if @comment.save
    #       @comments
    # else
    #     render "new"
  end
  
  def show
    @comment = Comment.find(params[:id])
  end
  
  def index
    @comment = Comment.all
  end
  
end