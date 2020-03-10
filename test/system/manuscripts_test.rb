require "application_system_test_case"

class ManuscriptsTest < ApplicationSystemTestCase
  setup do
    @manuscript = manuscripts(:one)
  end

  test "visiting the index" do
    visit manuscripts_url
    assert_selector "h1", text: "Manuscripts"
  end

  test "creating a Manuscript" do
    visit manuscripts_url
    click_on "New Manuscript"

    fill_in "Shelfmark", with: @manuscript.shelfmark
    click_on "Create Manuscript"

    assert_text "Manuscript was successfully created"
    click_on "Back"
  end

  test "updating a Manuscript" do
    visit manuscripts_url
    click_on "Edit", match: :first

    fill_in "Shelfmark", with: @manuscript.shelfmark
    click_on "Update Manuscript"

    assert_text "Manuscript was successfully updated"
    click_on "Back"
  end

  test "destroying a Manuscript" do
    visit manuscripts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manuscript was successfully destroyed"
  end
end
