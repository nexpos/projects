class InventoryController < ApplicationController
  def all_products
    @products = Product.all
  end

  def one_product
    @one_product = Product.first
  end

  def by_category
    @category = Product.pluck(:category)
  end
end
