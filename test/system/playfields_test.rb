require "application_system_test_case"

class PlayfieldsTest < ApplicationSystemTestCase
  setup do
    @playfield = playfields(:one)
  end

  test "visiting the index" do
    visit playfields_url
    assert_selector "h1", text: "Playfields"
  end

  test "creating a Playfield" do
    visit playfields_url
    click_on "New Playfield"

    fill_in "Description", with: @playfield.description
    fill_in "Dimensions", with: @playfield.dimensions
    fill_in "Name", with: @playfield.name
    fill_in "Type", with: @playfield.type
    click_on "Create Playfield"

    assert_text "Playfield was successfully created"
    click_on "Back"
  end

  test "updating a Playfield" do
    visit playfields_url
    click_on "Edit", match: :first

    fill_in "Description", with: @playfield.description
    fill_in "Dimensions", with: @playfield.dimensions
    fill_in "Name", with: @playfield.name
    fill_in "Type", with: @playfield.type
    click_on "Update Playfield"

    assert_text "Playfield was successfully updated"
    click_on "Back"
  end

  test "destroying a Playfield" do
    visit playfields_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Playfield was successfully destroyed"
  end
end
