class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:create,:edit,:destroy,:update]
  before_action :set_post, only: [:show,:edit,:update,:destroy]
  def new
    @post = Post.new()
  end

  def create
    @post = Post.new(post_params)
    @post.save ? (redirect_to @post) : (render 'new')
  end

  def show
  end

  def index
    @posts=Post.all
  end

  def edit
  end

  def update
    @post.update(post_params) ? (redirect_to @post) : (render 'edit')
  end

  private
  def post_params
    params.require(:post).permit(:content,:user_id,:community_id)
  end
  def set_post
    @post = Post.find(params[:id])
  end
end
