require "application_system_test_case"

class LeavesTest < ApplicationSystemTestCase
  setup do
    @leaf = leaves(:one)
  end

  test "visiting the index" do
    visit leaves_url
    assert_selector "h1", text: "Leaves"
  end

  test "creating a Leaf" do
    visit leaves_url
    click_on "New Leaf"

    fill_in "Folio number", with: @leaf.folio_number
    fill_in "Position", with: @leaf.position
    fill_in "Quire", with: @leaf.quire_id
    check "Single" if @leaf.single
    click_on "Create Leaf"

    assert_text "Leaf was successfully created"
    click_on "Back"
  end

  test "updating a Leaf" do
    visit leaves_url
    click_on "Edit", match: :first

    fill_in "Folio number", with: @leaf.folio_number
    fill_in "Position", with: @leaf.position
    fill_in "Quire", with: @leaf.quire_id
    check "Single" if @leaf.single
    click_on "Update Leaf"

    assert_text "Leaf was successfully updated"
    click_on "Back"
  end

  test "destroying a Leaf" do
    visit leaves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Leaf was successfully destroyed"
  end
end
