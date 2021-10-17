class ProductsController < ApplicationController
  def index
    @products = Product.all.includes(:variants)
    respond_to do |format|
      format.json { render json: @products, each_serializer: ProductSerializer }
      format.html
    end
  end

  def show
    
  end

  def create

  end

  private

  def products_params

  end
end
