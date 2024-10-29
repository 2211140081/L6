class ProductsController < ApplicationController
    
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end
  
  def create
    pd = Product.new(name: params[:product][:name], price: params[:product][:price])
    pd.save
    flash[:notice] = '商品を追加しました。'
    redirect_to root_path
  end
  
  def destroy
    Product.find(params[:id]).destroy
    flash[:notice] = '商品を削除しました。'
    redirect_to root_path
  end
    
end
