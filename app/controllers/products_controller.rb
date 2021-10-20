class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products_available = Product.all.includes(:variants)
    @products = Kaminari.paginate_array(@products_available).page(params[:page]).per(params[:per_page])
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

  def edit
  end
  

  def create
    @product = Product.new(products_params)
    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @product.update(products_params)
        format.html { redirect_to @product, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def products_params
    params.require(:product).permit(:name, :description, :country, :year, :stock, variants_attributes: [:brand, :price, :id, :supplier, :guarantee])
  end
end
