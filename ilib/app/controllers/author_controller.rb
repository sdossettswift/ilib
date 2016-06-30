class AuthorController < ApplicationController
  def create
    @author = author.new
    @author.name = params[:name][:name]
    @author.bio = params[:bio][:bio]
    @author.photo_url = params[:photo_url][:photo_url]
    if @author.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @author = Author.new
  end

  def show
    @author = Author.find_by id: params[:id]
  end

  def update
    @author.name = params[:name][:name]
    @author.bio = params[:bio][:bio]
    @author.photo_url = params[:photo_url][:photo_url]

    if @author.save
      redirect_to edit_author_path
    else
      render :edit
    end
  end

  def edit
      @author = Author.find_by id: params[:id]
  end

  def delete
    @author = Author.find_by id: params[:id]
      @author.destroy
      redirect_to root_path
     end
  end

  def destroy
    @author = Author.find_by id: params[:id]
      @author.destroy
      redirect_to root_path
     end

  def index
    @authors = Author.all.order("title asc")
  end
end
