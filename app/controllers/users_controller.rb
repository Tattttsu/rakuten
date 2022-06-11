class UsersController < ApplicationController
  def show
    @user =  User.find(params[:id])
    @bookmarks_code = @user.bookmarks.pluck(:itemCode) 
 
    

    
  end
end
