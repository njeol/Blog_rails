class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params[:post])
    redirect_to @post
  end
  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end
end
