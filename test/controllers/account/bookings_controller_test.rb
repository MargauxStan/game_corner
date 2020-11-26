require 'test_helper'

class Account::BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get account_bookings_index_url
    assert_response :success
  end

  test "should get accepted" do
    get account_bookings_accepted_url
    assert_response :success
  end

  test "should get declined" do
    get account_bookings_declined_url
    assert_response :success
  end

end
