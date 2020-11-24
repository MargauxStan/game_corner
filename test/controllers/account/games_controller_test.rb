require 'test_helper'

class Account::GamesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get account_games_index_url
    assert_response :success
  end

  test "should get edit" do
    get account_games_edit_url
    assert_response :success
  end

  test "should get update" do
    get account_games_update_url
    assert_response :success
  end

  test "should get destroy" do
    get account_games_destroy_url
    assert_response :success
  end

end
