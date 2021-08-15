require "test_helper"

class QualificationTsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qualification_t = qualification_ts(:one)
  end

  test "should get index" do
    get qualification_ts_url
    assert_response :success
  end

  test "should get new" do
    get new_qualification_t_url
    assert_response :success
  end

  test "should create qualification_t" do
    assert_difference('QualificationT.count') do
      post qualification_ts_url, params: { qualification_t: { email: @qualification_t.email, first_name: @qualification_t.first_name, last_name: @qualification_t.last_name, phone: @qualification_t.phone, skills: @qualification_t.skills } }
    end

    assert_redirected_to qualification_t_url(QualificationT.last)
  end

  test "should show qualification_t" do
    get qualification_t_url(@qualification_t)
    assert_response :success
  end

  test "should get edit" do
    get edit_qualification_t_url(@qualification_t)
    assert_response :success
  end

  test "should update qualification_t" do
    patch qualification_t_url(@qualification_t), params: { qualification_t: { email: @qualification_t.email, first_name: @qualification_t.first_name, last_name: @qualification_t.last_name, phone: @qualification_t.phone, skills: @qualification_t.skills } }
    assert_redirected_to qualification_t_url(@qualification_t)
  end

  test "should destroy qualification_t" do
    assert_difference('QualificationT.count', -1) do
      delete qualification_t_url(@qualification_t)
    end

    assert_redirected_to qualification_ts_url
  end
end
