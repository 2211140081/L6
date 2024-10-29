class CartItemsController < ApplicationController
    
  def new
    @cart_item = CartItem.new
  end
  
  def create
    c = CartItem.new(
        qty: params[:cart_item][:qty], 
        product_id: params[:cart_item][:product_id], 
        cart_id: current_cart.id
    )
    c.save
    flash[:notice] = 'カートに追加しました。'
    redirect_to cart_path(current_cart.id)
  end
  
  def destroy
    CartItem.find(params[:id]).destroy
    flash[:notice] = 'カートから削除しました。'
    redirect_to cart_path(current_cart.id)
  end
    
end
