require "application_system_test_case"

class StreetartsTest < ApplicationSystemTestCase
  setup do
    @streetart = streetarts(:one)
  end

  test "visiting the index" do
    visit streetarts_url
    assert_selector "h1", text: "Streetarts"
  end

  test "should create streetart" do
    visit streetarts_url
    click_on "New streetart"

    fill_in "Artists", with: @streetart.artists_id
    fill_in "Date of appearance", with: @streetart.date_of_appearance
    fill_in "Location", with: @streetart.location
    fill_in "Name", with: @streetart.name
    fill_in "Still existing", with: @streetart.still_existing
    fill_in "Summary", with: @streetart.summary
    click_on "Create Streetart"

    assert_text "Streetart was successfully created"
    click_on "Back"
  end

  test "should update Streetart" do
    visit streetart_url(@streetart)
    click_on "Edit this streetart", match: :first

    fill_in "Artists", with: @streetart.artists_id
    fill_in "Date of appearance", with: @streetart.date_of_appearance
    fill_in "Location", with: @streetart.location
    fill_in "Name", with: @streetart.name
    fill_in "Still existing", with: @streetart.still_existing
    fill_in "Summary", with: @streetart.summary
    click_on "Update Streetart"

    assert_text "Streetart was successfully updated"
    click_on "Back"
  end

  test "should destroy Streetart" do
    visit streetart_url(@streetart)
    click_on "Destroy this streetart", match: :first

    assert_text "Streetart was successfully destroyed"
  end
end
