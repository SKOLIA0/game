require "application_system_test_case"

class PlayermatchstatesTest < ApplicationSystemTestCase
  setup do
    @playermatchstate = playermatchstates(:one)
  end

  test "visiting the index" do
    visit playermatchstates_url
    assert_selector "h1", text: "Playermatchstates"
  end

  test "should create playermatchstate" do
    visit playermatchstates_url
    click_on "New playermatchstate"

    click_on "Create Playermatchstate"

    assert_text "Playermatchstate was successfully created"
    click_on "Back"
  end

  test "should update Playermatchstate" do
    visit playermatchstate_url(@playermatchstate)
    click_on "Edit this playermatchstate", match: :first

    click_on "Update Playermatchstate"

    assert_text "Playermatchstate was successfully updated"
    click_on "Back"
  end

  test "should destroy Playermatchstate" do
    visit playermatchstate_url(@playermatchstate)
    click_on "Destroy this playermatchstate", match: :first

    assert_text "Playermatchstate was successfully destroyed"
  end
end
