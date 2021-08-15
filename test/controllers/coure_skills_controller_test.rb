require "test_helper"

class CoureSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coure_skill = coure_skills(:one)
  end

  test "should get index" do
    get coure_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_coure_skill_url
    assert_response :success
  end

  test "should create coure_skill" do
    assert_difference('CoureSkill.count') do
      post coure_skills_url, params: { coure_skill: {  } }
    end

    assert_redirected_to coure_skill_url(CoureSkill.last)
  end

  test "should show coure_skill" do
    get coure_skill_url(@coure_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_coure_skill_url(@coure_skill)
    assert_response :success
  end

  test "should update coure_skill" do
    patch coure_skill_url(@coure_skill), params: { coure_skill: {  } }
    assert_redirected_to coure_skill_url(@coure_skill)
  end

  test "should destroy coure_skill" do
    assert_difference('CoureSkill.count', -1) do
      delete coure_skill_url(@coure_skill)
    end

    assert_redirected_to coure_skills_url
  end
end
