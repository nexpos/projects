require 'test_helper'

class CountryControllerTest < ActionDispatch::IntegrationTest
  test "should get all_states," do
    get country_all_states,_url
    assert_response :success
  end

  test "should get top_five_pop," do
    get country_top_five_pop,_url
    assert_response :success
  end

  test "should get top_five_area" do
    get country_top_five_area_url
    assert_response :success
  end

end
