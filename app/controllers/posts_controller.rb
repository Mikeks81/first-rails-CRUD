class PostsController < ApplicationController
  def index
  	@posts = Post.all
  	@post = Post.new
  end

  def create
  	Post.create(params[:post])
  	redirect_to root_path
  end

  def new
  	
  end

  def edit
  	@post = Post.find(params[:id])

  end

  def update
  	@post = Post.find(params[:id])
  	@post.update(params[:post])
  	redirect_to root_path
  end

  def show
  	@post = Post.find(params[:id])
  end

  def destroy
  	@post = Post.find(params[:id])
  	@post.destroy
  	redirect_to root_path
  end


end
