require "test_helper"

class ClassCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_code = class_codes(:one)
  end

  test "should get index" do
    get class_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_class_code_url
    assert_response :success
  end

  test "should create class_code" do
    assert_difference("ClassCode.count") do
      post class_codes_url, params: { class_code: { code: @class_code.code, description: @class_code.description } }
    end

    assert_redirected_to class_code_url(ClassCode.last)
  end

  test "should show class_code" do
    get class_code_url(@class_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_code_url(@class_code)
    assert_response :success
  end

  test "should update class_code" do
    patch class_code_url(@class_code), params: { class_code: { code: @class_code.code, description: @class_code.description } }
    assert_redirected_to class_code_url(@class_code)
  end

  test "should destroy class_code" do
    assert_difference("ClassCode.count", -1) do
      delete class_code_url(@class_code)
    end

    assert_redirected_to class_codes_url
  end
end
