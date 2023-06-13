require "test_helper"

class MiniTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mini_type = mini_types(:one)
  end

  test "should get index" do
    get mini_types_url
    assert_response :success
  end

  test "should get new" do
    get new_mini_type_url
    assert_response :success
  end

  test "should create mini_type" do
    assert_difference("MiniType.count") do
      post mini_types_url, params: { mini_type: { acronym: @mini_type.acronym, nome: @mini_type.nome } }
    end

    assert_redirected_to mini_type_url(MiniType.last)
  end

  test "should show mini_type" do
    get mini_type_url(@mini_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_mini_type_url(@mini_type)
    assert_response :success
  end

  test "should update mini_type" do
    patch mini_type_url(@mini_type), params: { mini_type: { acronym: @mini_type.acronym, nome: @mini_type.nome } }
    assert_redirected_to mini_type_url(@mini_type)
  end

  test "should destroy mini_type" do
    assert_difference("MiniType.count", -1) do
      delete mini_type_url(@mini_type)
    end

    assert_redirected_to mini_types_url
  end
end
