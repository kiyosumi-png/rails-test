class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    @book.save

    redirect_to action: :index
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    @book.update(book_params)
    redirect_to action: :index
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to action: :index
  end

  def test
    # find_by
    # @book = Book.find_by()
    # @book = Book.new(id: book[0].id, title: book[0].title, description: book[0].description)

    # order
    # @books = Book.all.order(id: "DESC")

    # first, last
    # @book = Book.first
    # @book = Book.last

    # select pluck
    # @book = Book.select(:title).first()

    # limit, offset
    # @books = Book.limit(1).all
    # @books = Book.offset(1).all

    # exists
    # Book.exists?(id:10)

    
  end

  private
    def book_params
      params.require(:book).permit(:title, :description)
    end
end
