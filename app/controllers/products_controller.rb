class ProductsController < ApplicationController

  before_action :fetch_category
  def index
    @products = @category.products
  end

  def new
    @product = @category.products.new
  end

  def create
    @product = @category.products.new(product_params)

    @save_success = @product.save
  end

  def edit
    @product = @category.products.find(params[:id])
  end

  def update
    @product = @category.products.find(params[:id])
    @save_success = @product.update_attributes(product_params)
  end

  def show
    @product = @category.products.find(params[:id])
  end

private
  def fetch_category
    @category = ProductCategory.find(params[:product_category_id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :quantity)
  end
end
