require "application_system_test_case"

class QuiresTest < ApplicationSystemTestCase
  setup do
    @quire = quires(:one)
  end

  test "visiting the index" do
    visit quires_url
    assert_selector "h1", text: "Quires"
  end

  test "creating a Quire" do
    visit quires_url
    click_on "New Quire"

    fill_in "Manuscript", with: @quire.manuscript_id
    fill_in "Quire number", with: @quire.quire_number
    click_on "Create Quire"

    assert_text "Quire was successfully created"
    click_on "Back"
  end

  test "updating a Quire" do
    visit quires_url
    click_on "Edit", match: :first

    fill_in "Manuscript", with: @quire.manuscript_id
    fill_in "Quire number", with: @quire.quire_number
    click_on "Update Quire"

    assert_text "Quire was successfully updated"
    click_on "Back"
  end

  test "destroying a Quire" do
    visit quires_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quire was successfully destroyed"
  end
end
