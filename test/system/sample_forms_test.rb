require "application_system_test_case"

class SampleFormsTest < ApplicationSystemTestCase
  setup do
    @sample_form = sample_forms(:one)
  end

  test "visiting the index" do
    visit sample_forms_url
    assert_selector "h1", text: "Sample Forms"
  end

  test "creating a Sample form" do
    visit sample_forms_url
    click_on "New Sample Form"

    fill_in "Categorise", with: @sample_form.categorise
    fill_in "Date on", with: @sample_form.date_on
    fill_in "Name", with: @sample_form.name
    fill_in "Number", with: @sample_form.number
    fill_in "Rating", with: @sample_form.rating
    check "Truth" if @sample_form.truth
    click_on "Create Sample form"

    assert_text "Sample form was successfully created"
    click_on "Back"
  end

  test "updating a Sample form" do
    visit sample_forms_url
    click_on "Edit", match: :first

    fill_in "Categorise", with: @sample_form.categorise
    fill_in "Date on", with: @sample_form.date_on
    fill_in "Name", with: @sample_form.name
    fill_in "Number", with: @sample_form.number
    fill_in "Rating", with: @sample_form.rating
    check "Truth" if @sample_form.truth
    click_on "Update Sample form"

    assert_text "Sample form was successfully updated"
    click_on "Back"
  end

  test "destroying a Sample form" do
    visit sample_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sample form was successfully destroyed"
  end
end
