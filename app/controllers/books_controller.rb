class BooksController < ApplicationController

  def new
     @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    binding.pry
    if @book.save
      redirect_to @book
    else
      render 'new'
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def index
    # @books = Book.
    @books = Book.all
    # render 'show'
    #   Book.where('name LIKE ?', "%#{params[:title]}%")
    # else
    #   Book.all
    # end
  end

  def search
    book = Book.find_by_title params[:title]
    render 'show'
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :cover, :language)
  end
end
