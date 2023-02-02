require "test_helper"

class PlayermatchstatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playermatchstate = playermatchstates(:one)
  end

  test "should get index" do
    get playermatchstates_url
    assert_response :success
  end

  test "should get new" do
    get new_playermatchstate_url
    assert_response :success
  end

  test "should create playermatchstate" do
    assert_difference("Playermatchstate.count") do
      post playermatchstates_url, params: { playermatchstate: {  } }
    end

    assert_redirected_to playermatchstate_url(Playermatchstate.last)
  end

  test "should show playermatchstate" do
    get playermatchstate_url(@playermatchstate)
    assert_response :success
  end

  test "should get edit" do
    get edit_playermatchstate_url(@playermatchstate)
    assert_response :success
  end

  test "should update playermatchstate" do
    patch playermatchstate_url(@playermatchstate), params: { playermatchstate: {  } }
    assert_redirected_to playermatchstate_url(@playermatchstate)
  end

  test "should destroy playermatchstate" do
    assert_difference("Playermatchstate.count", -1) do
      delete playermatchstate_url(@playermatchstate)
    end

    assert_redirected_to playermatchstates_url
  end
end
