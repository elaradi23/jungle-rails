class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @reviews = @product.reviews.reverse
    @review = @product.reviews.build
    @username = User.all.find_by params[:user_id]
  end

end
