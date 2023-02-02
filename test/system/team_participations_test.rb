require "application_system_test_case"

class TeamParticipationsTest < ApplicationSystemTestCase
  setup do
    @team_participation = team_participations(:one)
  end

  test "visiting the index" do
    visit team_participations_url
    assert_selector "h1", text: "Team participations"
  end

  test "should create team participation" do
    visit team_participations_url
    click_on "New team participation"

    click_on "Create Team participation"

    assert_text "Team participation was successfully created"
    click_on "Back"
  end

  test "should update Team participation" do
    visit team_participation_url(@team_participation)
    click_on "Edit this team participation", match: :first

    click_on "Update Team participation"

    assert_text "Team participation was successfully updated"
    click_on "Back"
  end

  test "should destroy Team participation" do
    visit team_participation_url(@team_participation)
    click_on "Destroy this team participation", match: :first

    assert_text "Team participation was successfully destroyed"
  end
end
