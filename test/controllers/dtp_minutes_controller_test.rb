require "test_helper"

class DtpMinutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dtp_minute = dtp_minutes(:one)
  end

  test "should get index" do
    get dtp_minutes_url
    assert_response :success
  end

  test "should get new" do
    get new_dtp_minute_url
    assert_response :success
  end

  test "should create dtp_minute" do
    assert_difference("DtpMinute.count") do
      post dtp_minutes_url, params: { dtp_minute: {  } }
    end

    assert_redirected_to dtp_minute_url(DtpMinute.last)
  end

  test "should show dtp_minute" do
    get dtp_minute_url(@dtp_minute)
    assert_response :success
  end

  test "should get edit" do
    get edit_dtp_minute_url(@dtp_minute)
    assert_response :success
  end

  test "should update dtp_minute" do
    patch dtp_minute_url(@dtp_minute), params: { dtp_minute: {  } }
    assert_redirected_to dtp_minute_url(@dtp_minute)
  end

  test "should destroy dtp_minute" do
    assert_difference("DtpMinute.count", -1) do
      delete dtp_minute_url(@dtp_minute)
    end

    assert_redirected_to dtp_minutes_url
  end
end
