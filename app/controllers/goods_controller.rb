class GoodsController < ApplicationController
  
  
  
  def search
   @goods = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword]) # This returns Enamerable object
  end
end
