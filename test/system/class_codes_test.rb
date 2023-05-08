require "application_system_test_case"

class ClassCodesTest < ApplicationSystemTestCase
  setup do
    @class_code = class_codes(:one)
  end

  test "visiting the index" do
    visit class_codes_url
    assert_selector "h1", text: "Class codes"
  end

  test "should create class code" do
    visit class_codes_url
    click_on "New class code"

    fill_in "Code", with: @class_code.code
    fill_in "Description", with: @class_code.description
    click_on "Create Class code"

    assert_text "Class code was successfully created"
    click_on "Back"
  end

  test "should update Class code" do
    visit class_code_url(@class_code)
    click_on "Edit this class code", match: :first

    fill_in "Code", with: @class_code.code
    fill_in "Description", with: @class_code.description
    click_on "Update Class code"

    assert_text "Class code was successfully updated"
    click_on "Back"
  end

  test "should destroy Class code" do
    visit class_code_url(@class_code)
    click_on "Destroy this class code", match: :first

    assert_text "Class code was successfully destroyed"
  end
end
