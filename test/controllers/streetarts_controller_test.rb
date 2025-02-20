require "test_helper"

class StreetartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @streetart = streetarts(:one)
  end

  test "should get index" do
    get streetarts_url
    assert_response :success
  end

  test "should get new" do
    get new_streetart_url
    assert_response :success
  end

  test "should create streetart" do
    assert_difference("Streetart.count") do
      post streetarts_url, params: { streetart: { artists_id: @streetart.artists_id, date_of_appearance: @streetart.date_of_appearance, location: @streetart.location, name: @streetart.name, still_existing: @streetart.still_existing, summary: @streetart.summary } }
    end

    assert_redirected_to streetart_url(Streetart.last)
  end

  test "should show streetart" do
    get streetart_url(@streetart)
    assert_response :success
  end

  test "should get edit" do
    get edit_streetart_url(@streetart)
    assert_response :success
  end

  test "should update streetart" do
    patch streetart_url(@streetart), params: { streetart: { artists_id: @streetart.artists_id, date_of_appearance: @streetart.date_of_appearance, location: @streetart.location, name: @streetart.name, still_existing: @streetart.still_existing, summary: @streetart.summary } }
    assert_redirected_to streetart_url(@streetart)
  end

  test "should destroy streetart" do
    assert_difference("Streetart.count", -1) do
      delete streetart_url(@streetart)
    end

    assert_redirected_to streetarts_url
  end
end
