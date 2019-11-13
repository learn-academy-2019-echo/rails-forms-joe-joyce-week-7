class BlogPostsController < ApplicationController
  def index
    @posts = BlogPost.all
    #render "index.html.erb"
  end

  def show
    @post = BlogPost.find(params[:id])
    #render "show.html.erb"
  end
  
  def new
  end 
  
  def create
    @post = BlogPost.create(title: params[:title],
    content: params[:content])
    if @post.valid?
      redirect_to @post
    else
      render action: :new
    end
  end
  
end
