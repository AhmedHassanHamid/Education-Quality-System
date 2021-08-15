require "application_system_test_case"

class CoureSkillsTest < ApplicationSystemTestCase
  setup do
    @coure_skill = coure_skills(:one)
  end

  test "visiting the index" do
    visit coure_skills_url
    assert_selector "h1", text: "Coure Skills"
  end

  test "creating a Coure skill" do
    visit coure_skills_url
    click_on "New Coure Skill"

    click_on "Create Coure skill"

    assert_text "Coure skill was successfully created"
    click_on "Back"
  end

  test "updating a Coure skill" do
    visit coure_skills_url
    click_on "Edit", match: :first

    click_on "Update Coure skill"

    assert_text "Coure skill was successfully updated"
    click_on "Back"
  end

  test "destroying a Coure skill" do
    visit coure_skills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coure skill was successfully destroyed"
  end
end
