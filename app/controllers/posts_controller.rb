class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    redirect_to post_path(@post) if @post.update(post_params)
  end

  def destroy
    @post = Post.find(params[:id])
    redirect_to posts_path if @post.destroy
  end

private
  def post_params
    params.require(:post).permit(:name)
  end

end
