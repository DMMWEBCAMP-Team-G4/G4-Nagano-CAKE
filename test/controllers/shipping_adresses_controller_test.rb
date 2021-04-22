require 'test_helper'

class ShippingAdressesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shipping_adresses_index_url
    assert_response :success
  end

  test "should get edit" do
    get shipping_adresses_edit_url
    assert_response :success
  end

end
