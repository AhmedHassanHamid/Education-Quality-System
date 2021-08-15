require "application_system_test_case"

class QualificationTsTest < ApplicationSystemTestCase
  setup do
    @qualification_t = qualification_ts(:one)
  end

  test "visiting the index" do
    visit qualification_ts_url
    assert_selector "h1", text: "Qualification Ts"
  end

  test "creating a Qualification t" do
    visit qualification_ts_url
    click_on "New Qualification T"

    fill_in "Email", with: @qualification_t.email
    fill_in "First name", with: @qualification_t.first_name
    fill_in "Last name", with: @qualification_t.last_name
    fill_in "Phone", with: @qualification_t.phone
    fill_in "Skills", with: @qualification_t.skills
    click_on "Create Qualification t"

    assert_text "Qualification t was successfully created"
    click_on "Back"
  end

  test "updating a Qualification t" do
    visit qualification_ts_url
    click_on "Edit", match: :first

    fill_in "Email", with: @qualification_t.email
    fill_in "First name", with: @qualification_t.first_name
    fill_in "Last name", with: @qualification_t.last_name
    fill_in "Phone", with: @qualification_t.phone
    fill_in "Skills", with: @qualification_t.skills
    click_on "Update Qualification t"

    assert_text "Qualification t was successfully updated"
    click_on "Back"
  end

  test "destroying a Qualification t" do
    visit qualification_ts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Qualification t was successfully destroyed"
  end
end
