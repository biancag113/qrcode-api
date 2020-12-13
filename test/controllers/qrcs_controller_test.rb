require "test_helper"

class QrcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qrc = qrcs(:one)
  end

  test "should get index" do
    get qrcs_url, as: :json
    assert_response :success
  end

  test "should create qrc" do
    assert_difference('Qrc.count') do
      post qrcs_url, params: { qrc: { discount: @qrc.discount, num: @qrc.num } }, as: :json
    end

    assert_response 201
  end

  test "should show qrc" do
    get qrc_url(@qrc), as: :json
    assert_response :success
  end

  test "should update qrc" do
    patch qrc_url(@qrc), params: { qrc: { discount: @qrc.discount, num: @qrc.num } }, as: :json
    assert_response 200
  end

  test "should destroy qrc" do
    assert_difference('Qrc.count', -1) do
      delete qrc_url(@qrc), as: :json
    end

    assert_response 204
  end
end
