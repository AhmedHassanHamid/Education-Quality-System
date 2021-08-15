require "application_system_test_case"

class CourseSkillsTest < ApplicationSystemTestCase
  setup do
    @course_skill = course_skills(:one)
  end

  test "visiting the index" do
    visit course_skills_url
    assert_selector "h1", text: "Course Skills"
  end

  test "creating a Course skill" do
    visit course_skills_url
    click_on "New Course Skill"

    fill_in "User", with: @course_skill.User_id
    fill_in "Course code", with: @course_skill.course_code
    fill_in "Skills", with: @course_skill.skills
    click_on "Create Course skill"

    assert_text "Course skill was successfully created"
    click_on "Back"
  end

  test "updating a Course skill" do
    visit course_skills_url
    click_on "Edit", match: :first

    fill_in "User", with: @course_skill.User_id
    fill_in "Course code", with: @course_skill.course_code
    fill_in "Skills", with: @course_skill.skills
    click_on "Update Course skill"

    assert_text "Course skill was successfully updated"
    click_on "Back"
  end

  test "destroying a Course skill" do
    visit course_skills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course skill was successfully destroyed"
  end
end
