class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blogs=Blog.find(params[:id])
  end

  def new
   @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blog_path(@blog.id)
    else
      render :new
  end

  def edit
    @blogs= Blog.find(params[:id])
  end

  def update
    blog = Blog.find(params[:id])
    blog.update(blog_params)
    redirect_to blog_path(blog)
  end

  def destory
    blog = Blog.find(params[:id])
    blog.destory
    redirect_to blogs_path
  end

 private
 def blog_params
   params.require(:blog).permit(:title, :category, :body)
 end

end


