class ProductsController < ApplicationController
  def index
  	@products = Product.all.paginate(page: params[:page], per_page: 5)
  end
  def brand
	@products = Product.order(:brand).paginate(page: params[:page], per_page: 5)
  end

  def category
  	@products = Product.order(:category).paginate(page: params[:page], per_page: 5)
  end

  def search
  	@products = Product.search(params[:q].to_s).paginate(page: params[:page], per_page: 5)
  end
end
