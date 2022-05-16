class BooksController < ApplicationController

  def index
   @books= Book.new
   @book =Book.all
   
  end

  def show
  end

  def create
  	@book = Book.new
  	if @book.save
  		redirect_to book_path(@book)
  	else
  		render :new
  	end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def
  ist_params
  params.require(:list).permit(:title, :body)
  end

end


