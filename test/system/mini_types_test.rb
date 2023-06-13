require "application_system_test_case"

class MiniTypesTest < ApplicationSystemTestCase
  setup do
    @mini_type = mini_types(:one)
  end

  test "visiting the index" do
    visit mini_types_url
    assert_selector "h1", text: "Mini types"
  end

  test "should create mini type" do
    visit mini_types_url
    click_on "New mini type"

    fill_in "Acronym", with: @mini_type.acronym
    fill_in "Nome", with: @mini_type.nome
    click_on "Create Mini type"

    assert_text "Mini type was successfully created"
    click_on "Back"
  end

  test "should update Mini type" do
    visit mini_type_url(@mini_type)
    click_on "Edit this mini type", match: :first

    fill_in "Acronym", with: @mini_type.acronym
    fill_in "Nome", with: @mini_type.nome
    click_on "Update Mini type"

    assert_text "Mini type was successfully updated"
    click_on "Back"
  end

  test "should destroy Mini type" do
    visit mini_type_url(@mini_type)
    click_on "Destroy this mini type", match: :first

    assert_text "Mini type was successfully destroyed"
  end
end
