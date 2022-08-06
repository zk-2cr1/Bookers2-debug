class FavoritesController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    favorite = current_user.favorites.new(book_id: @book.id)
    favorite.save
    redirect_to book_path(@book)

    @user = User.find(params[:user_id])
    favorite = current_user.favorites.new(user_id: @user.id)
    favorite.save
    redirect_to user_path(@user)
  end

  def destroy
   @book = Book.find(params[:book_id])
    favorite = current_user.favorites.find_by(book_id: @book.id)
    favorite.destroy
    redirect_to book_path(@book)

    @user = User.find(params[:user_id])
    favorite = current_user.favorites.find_by(user_id: @user.id)
    favorite.destroy
    redirect_to user_path(@user)
  end

end
