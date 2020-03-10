require 'test_helper'

class LeavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leaf = leaves(:one)
  end

  test "should get index" do
    get leaves_url
    assert_response :success
  end

  test "should get new" do
    get new_leaf_url
    assert_response :success
  end

  test "should create leaf" do
    assert_difference('Leaf.count') do
      post leaves_url, params: { leaf: { folio_number: @leaf.folio_number, position: @leaf.position, quire_id: @leaf.quire_id, single: @leaf.single } }
    end

    assert_redirected_to leaf_url(Leaf.last)
  end

  test "should show leaf" do
    get leaf_url(@leaf)
    assert_response :success
  end

  test "should get edit" do
    get edit_leaf_url(@leaf)
    assert_response :success
  end

  test "should update leaf" do
    patch leaf_url(@leaf), params: { leaf: { folio_number: @leaf.folio_number, position: @leaf.position, quire_id: @leaf.quire_id, single: @leaf.single } }
    assert_redirected_to leaf_url(@leaf)
  end

  test "should destroy leaf" do
    assert_difference('Leaf.count', -1) do
      delete leaf_url(@leaf)
    end

    assert_redirected_to leaves_url
  end
end
