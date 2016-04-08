class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create

  #  @product = Product.new
  #  @product.title = params[:product][:title]
  #  @product.description = params[:product][:description]
  #  @product.price = params[:product][:price]
  #  @product.save!

    product_params = params.require(:product).permit([:title, :description, :price])
    @product = Product.new(product_params)

   if @product.save
     redirect_to product_path(@product)
   else
     render :new
   end
  end

  def show
    @product = Product.find params[:id]
  end

  def index
    @products = Product.all
  end




end
