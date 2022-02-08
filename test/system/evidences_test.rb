require "application_system_test_case"

class EvidencesTest < ApplicationSystemTestCase
  setup do
    @evidence = evidences(:one)
  end

  test "visiting the index" do
    visit evidences_url
    assert_selector "h1", text: "Evidences"
  end

  test "should create evidence" do
    visit evidences_url
    click_on "New evidence"

    fill_in "Description", with: @evidence.description
    fill_in "Distributor", with: @evidence.distributor
    fill_in "Order", with: @evidence.order
    fill_in "Status", with: @evidence.status
    fill_in "Title", with: @evidence.title
    click_on "Create Evidence"

    assert_text "Evidence was successfully created"
    click_on "Back"
  end

  test "should update Evidence" do
    visit evidence_url(@evidence)
    click_on "Edit this evidence", match: :first

    fill_in "Description", with: @evidence.description
    fill_in "Distributor", with: @evidence.distributor
    fill_in "Order", with: @evidence.order
    fill_in "Status", with: @evidence.status
    fill_in "Title", with: @evidence.title
    click_on "Update Evidence"

    assert_text "Evidence was successfully updated"
    click_on "Back"
  end

  test "should destroy Evidence" do
    visit evidence_url(@evidence)
    click_on "Destroy this evidence", match: :first

    assert_text "Evidence was successfully destroyed"
  end
end
