require "application_system_test_case"

class TrapplesTest < ApplicationSystemTestCase
  setup do
    @trapple = trapples(:one)
  end

  test "visiting the index" do
    visit trapples_url
    assert_selector "h1", text: "Trapples"
  end

  test "creating a Trapple" do
    visit trapples_url
    click_on "New Trapple"

    fill_in "Email", with: @trapple.email
    fill_in "First name", with: @trapple.first_name
    fill_in "Last name", with: @trapple.last_name
    fill_in "Phone", with: @trapple.phone
    fill_in "Trapple", with: @trapple.trapple
    click_on "Create Trapple"

    assert_text "Trapple was successfully created"
    click_on "Back"
  end

  test "updating a Trapple" do
    visit trapples_url
    click_on "Edit", match: :first

    fill_in "Email", with: @trapple.email
    fill_in "First name", with: @trapple.first_name
    fill_in "Last name", with: @trapple.last_name
    fill_in "Phone", with: @trapple.phone
    fill_in "Trapple", with: @trapple.trapple
    click_on "Update Trapple"

    assert_text "Trapple was successfully updated"
    click_on "Back"
  end

  test "destroying a Trapple" do
    visit trapples_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trapple was successfully destroyed"
  end
end
