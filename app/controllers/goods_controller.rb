class GoodsController < ApplicationController
  
  
  
  def search
   @goods = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword]).page(params[:page])
   # This returns Enamerable object
  end
end
