require "test_helper"

class NewListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_list = new_lists(:one)
  end

  test "should get index" do
    get new_lists_url, as: :json
    assert_response :success
  end

  test "should create new_list" do
    assert_difference('NewList.count') do
      post new_lists_url, params: { new_list: { complete: @new_list.complete, item: @new_list.item, title: @new_list.title } }, as: :json
    end

    assert_response 201
  end

  test "should show new_list" do
    get new_list_url(@new_list), as: :json
    assert_response :success
  end

  test "should update new_list" do
    patch new_list_url(@new_list), params: { new_list: { complete: @new_list.complete, item: @new_list.item, title: @new_list.title } }, as: :json
    assert_response 200
  end

  test "should destroy new_list" do
    assert_difference('NewList.count', -1) do
      delete new_list_url(@new_list), as: :json
    end

    assert_response 204
  end
end
