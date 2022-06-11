class GoodsController < ApplicationController

  def search
    @goods = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword]).page(params[:page])
     # This returns Enamerable object
  end
  
  def create
    @bookmark = Bookmark.new(itemCode: params[:itemCode])
    @bookmark.user_id = current_user.id
    if @bookmark.save
      
      redirect_to "/user/#{current_user.id}"
    else
       redirect_to root_path
   end
  end
  
   def destroy
     Bookmark.find_by(itemCode: params[:itemCode]).destroy
    
    redirect_to request.referrer || root_url
  end
end