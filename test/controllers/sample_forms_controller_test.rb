require 'test_helper'

class SampleFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sample_form = sample_forms(:one)
  end

  test "should get index" do
    get sample_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_sample_form_url
    assert_response :success
  end

  test "should create sample_form" do
    assert_difference('SampleForm.count') do
      post sample_forms_url, params: { sample_form: { categorise: @sample_form.categorise, date_on: @sample_form.date_on, name: @sample_form.name, number: @sample_form.number, rating: @sample_form.rating, truth: @sample_form.truth } }
    end

    assert_redirected_to sample_form_url(SampleForm.last)
  end

  test "should show sample_form" do
    get sample_form_url(@sample_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_sample_form_url(@sample_form)
    assert_response :success
  end

  test "should update sample_form" do
    patch sample_form_url(@sample_form), params: { sample_form: { categorise: @sample_form.categorise, date_on: @sample_form.date_on, name: @sample_form.name, number: @sample_form.number, rating: @sample_form.rating, truth: @sample_form.truth } }
    assert_redirected_to sample_form_url(@sample_form)
  end

  test "should destroy sample_form" do
    assert_difference('SampleForm.count', -1) do
      delete sample_form_url(@sample_form)
    end

    assert_redirected_to sample_forms_url
  end
end
