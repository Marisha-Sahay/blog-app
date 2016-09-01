class BlogsController < ApplicationController

  def new
  end

  def create
    blog = Blog.new(title: params[:title], description: params[:description])
    if blog.save
      flash[:success] = "Blog successfully posted"
      redirect_to "/blogs"
    else
      flash[:danger] = "Something went wrong, try again"
      render :new
    end
  end

  def show
    @blog = Blog.find_by(id: params[:id])
  end

  def index
    @blogs = Blog.all
  end

  def edit
    @blog = Blog.find_by(id: params[:id])
  end

  def update
    @blog = Blog.find_by(id: params[:id])
    @blog.title = params[:title]
    @blog.description = params[:description]
    if @blog.save
      flash[:success] = "Blog successfully updated!!!"
      render :show
    end
  end

  def destroy
    blog = Blog.find_by(id: params[:id])
    blog.de

end
