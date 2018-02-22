require 'test_helper'

class InventoryControllerTest < ActionDispatch::IntegrationTest
  test "should get all_products" do
    get inventory_all_products_url
    assert_response :success
  end

  test "should get one_product" do
    get inventory_one_product_url
    assert_response :success
  end

  test "should get by_category" do
    get inventory_by_category_url
    assert_response :success
  end

end
