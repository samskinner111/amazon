class StorefrontController < ApplicationController
  before_filter :authenticate_user!

  def all_items
    @products = Product.all
  end

  def items_by_category
  end

  def items_by_brand
  end
end
