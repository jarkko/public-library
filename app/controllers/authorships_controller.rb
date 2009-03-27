class AuthorshipsController < ApplicationController
  def create
    get_author_and_book
    
    @book.authors << @author

    flash[:notice] = "Successfully added #{@author.name} to book's authors"

    redirect_to book_path(@book)
  end
  
  def destroy
    @authorship = Authorship.find(params[:id])
    @authorship.destroy
    
    flash[:notice] = "Successfully removed #{@authorship.author.name} from book's authors"

    redirect_to book_path(@authorship.book)
  end
  
  private
  
  def get_author_and_book
    @book = Book.find(params[:book_id])
    @author = Author.find(params[:author_id])
  end
end
