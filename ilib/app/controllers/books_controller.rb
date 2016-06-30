class BooksController < ApplicationController

  def index
    @books = Book.all.order("title asc")
  end

  def show
    @book = Book.find_by id: params[:id]
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new
    @book.title = params[:book][:title]
    @book.photo_url = params[:book][:photo_url]
    @book.price = params[:book][:price]

    if @book.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @book = Book.find_by id: params[:id]
  end

  def update
      @book = Book.find_by id: params[:id]
      @book.title = params[:book][:title]
      @book.photo_url = params[:book][:photo_url]
      @book.price = params[:book][:price]

      if @book.save
        redirect_to edit_book_path
      else
        render :edit
      end
  end

  def destroy
    @book = Book.find_by id: params[:id]
    @book.destroy
    redirect_to root_path
  end

  def delete
    @book = Book.find_by id: params[:id]
      @book.destroy
      redirect_to root_path
     end
end
