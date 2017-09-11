require 'test_helper'

class GreenfoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @greenfood = greenfoods(:one)
  end

  test "should get index" do
    get greenfoods_url
    assert_response :success
  end

  test "should get new" do
    get new_greenfood_url
    assert_response :success
  end

  test "should create greenfood" do
    assert_difference('Greenfood.count') do
      post greenfoods_url, params: { greenfood: {  } }
    end

    assert_redirected_to greenfood_url(Greenfood.last)
  end

  test "should show greenfood" do
    get greenfood_url(@greenfood)
    assert_response :success
  end

  test "should get edit" do
    get edit_greenfood_url(@greenfood)
    assert_response :success
  end

  test "should update greenfood" do
    patch greenfood_url(@greenfood), params: { greenfood: {  } }
    assert_redirected_to greenfood_url(@greenfood)
  end

  test "should destroy greenfood" do
    assert_difference('Greenfood.count', -1) do
      delete greenfood_url(@greenfood)
    end

    assert_redirected_to greenfoods_url
  end
end
