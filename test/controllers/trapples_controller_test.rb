require "test_helper"

class TrapplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trapple = trapples(:one)
  end

  test "should get index" do
    get trapples_url
    assert_response :success
  end

  test "should get new" do
    get new_trapple_url
    assert_response :success
  end

  test "should create trapple" do
    assert_difference('Trapple.count') do
      post trapples_url, params: { trapple: { email: @trapple.email, first_name: @trapple.first_name, last_name: @trapple.last_name, phone: @trapple.phone, trapple: @trapple.trapple } }
    end

    assert_redirected_to trapple_url(Trapple.last)
  end

  test "should show trapple" do
    get trapple_url(@trapple)
    assert_response :success
  end

  test "should get edit" do
    get edit_trapple_url(@trapple)
    assert_response :success
  end

  test "should update trapple" do
    patch trapple_url(@trapple), params: { trapple: { email: @trapple.email, first_name: @trapple.first_name, last_name: @trapple.last_name, phone: @trapple.phone, trapple: @trapple.trapple } }
    assert_redirected_to trapple_url(@trapple)
  end

  test "should destroy trapple" do
    assert_difference('Trapple.count', -1) do
      delete trapple_url(@trapple)
    end

    assert_redirected_to trapples_url
  end
end
