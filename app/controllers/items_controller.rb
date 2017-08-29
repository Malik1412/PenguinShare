class ItemsController < ApplicationController
	protect_from_forgery

	def index
		@additem = Item.new
	end



	def create
		
  	@additem = Item.create(name:params[:item][:name], category:params[:item][:category], description:params[:item][:description], delivery:params[:item][:delivery], location:params[:item][:location], pricebase:params[:item][:pricebase], price:params[:item][:price], deposit:params[:item][:deposit], period:params[:item][:period])
 
    if @additem.save
      redirect_to @additem, notice: 'Upload was successfully created.'
    else
      render :new
    end
  end

  private 

   def item_params
      params.require(:item).permit(:name, :category, :description, :delivery, :location, :pricebase, :price, :deposit, :period)
    end
end
