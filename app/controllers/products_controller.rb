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

  def new
    @product = Product.new
  end
  

  def create
    @product = Product.new(products_params)
    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  private

  def products_params
    params.require(:product).permit(:name, :description, :variants)
  end
end
