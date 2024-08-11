class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
   @book = Book.new(book_params)
   if @book.save
     flash[:notice] = "投稿に成功しました。"
     redirect_to book_path(@book.id)
   else
     flash.now[:alert] = "投稿に失敗しました。"
     render :new
   end
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end
  
  def destory
    book = book.find(params[:id])
    book.destory
    redirect_to '/books'
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body, :image)
  end
  
end
