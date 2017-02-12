class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = getPostFromId
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def upvote
    @post = getPostFromId
    @post.addUpvote
    @post.save
    redirect_to @post
  end

  def downvote
    @post = getPostFromId
    @post.addDownvote
    @post.save
    redirect_to @post
  end

  private
    def post_params
      return params.require(:post).permit(:title, :link, :description)
    end

    def getPostFromId
      Post.find(params[:id])
    end

end
