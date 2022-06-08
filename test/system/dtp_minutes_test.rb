require "application_system_test_case"

class DtpMinutesTest < ApplicationSystemTestCase
  setup do
    @dtp_minute = dtp_minutes(:one)
  end

  test "visiting the index" do
    visit dtp_minutes_url
    assert_selector "h1", text: "Dtp minutes"
  end

  test "should create dtp minute" do
    visit dtp_minutes_url
    click_on "New dtp minute"

    click_on "Create Dtp minute"

    assert_text "Dtp minute was successfully created"
    click_on "Back"
  end

  test "should update Dtp minute" do
    visit dtp_minute_url(@dtp_minute)
    click_on "Edit this dtp minute", match: :first

    click_on "Update Dtp minute"

    assert_text "Dtp minute was successfully updated"
    click_on "Back"
  end

  test "should destroy Dtp minute" do
    visit dtp_minute_url(@dtp_minute)
    click_on "Destroy this dtp minute", match: :first

    assert_text "Dtp minute was successfully destroyed"
  end
end
