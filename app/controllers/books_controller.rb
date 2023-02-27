class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
    #インスタンス変数の仕組み
  end

  def create
    @book = Book.new(book_params)

    @book.save

    redirect_to action: :index
  end

  private
    def book_params
      params.require(:book).permit(:title, :description)
    end
    #private な関数
end
