class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(set_params)
    redirect_to post_path(@post)
  end

  private

  def set_params
    params.require(:post).permit(:title, :description)
  end

end
