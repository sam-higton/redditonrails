class PostsController < ApplicationController
  def new

  end

  def create
    @post = Post.new(params[:post])
    render plain: @post.inspect
  end

end
