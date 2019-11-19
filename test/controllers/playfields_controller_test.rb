require 'test_helper'

class PlayfieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playfield = playfields(:one)
  end

  test "should get index" do
    get playfields_url
    assert_response :success
  end

  test "should get new" do
    get new_playfield_url
    assert_response :success
  end

  test "should create playfield" do
    assert_difference('Playfield.count') do
      post playfields_url, params: { playfield: { description: @playfield.description, dimensions: @playfield.dimensions, name: @playfield.name, type: @playfield.type } }
    end

    assert_redirected_to playfield_url(Playfield.last)
  end

  test "should show playfield" do
    get playfield_url(@playfield)
    assert_response :success
  end

  test "should get edit" do
    get edit_playfield_url(@playfield)
    assert_response :success
  end

  test "should update playfield" do
    patch playfield_url(@playfield), params: { playfield: { description: @playfield.description, dimensions: @playfield.dimensions, name: @playfield.name, type: @playfield.type } }
    assert_redirected_to playfield_url(@playfield)
  end

  test "should destroy playfield" do
    assert_difference('Playfield.count', -1) do
      delete playfield_url(@playfield)
    end

    assert_redirected_to playfields_url
  end
end
