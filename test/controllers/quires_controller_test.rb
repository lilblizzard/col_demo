require 'test_helper'

class QuiresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quire = quires(:one)
  end

  test "should get index" do
    get quires_url
    assert_response :success
  end

  test "should get new" do
    get new_quire_url
    assert_response :success
  end

  test "should create quire" do
    assert_difference('Quire.count') do
      post quires_url, params: { quire: { manuscript_id: @quire.manuscript_id, quire_number: @quire.quire_number } }
    end

    assert_redirected_to quire_url(Quire.last)
  end

  test "should show quire" do
    get quire_url(@quire)
    assert_response :success
  end

  test "should get edit" do
    get edit_quire_url(@quire)
    assert_response :success
  end

  test "should update quire" do
    patch quire_url(@quire), params: { quire: { manuscript_id: @quire.manuscript_id, quire_number: @quire.quire_number } }
    assert_redirected_to quire_url(@quire)
  end

  test "should destroy quire" do
    assert_difference('Quire.count', -1) do
      delete quire_url(@quire)
    end

    assert_redirected_to quires_url
  end
end
