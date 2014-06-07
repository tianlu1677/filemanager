require 'test_helper'

class LeavemsgsControllerTest < ActionController::TestCase
  setup do
    @leavemsg = leavemsgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leavemsgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leavemsg" do
    assert_difference('Leavemsg.count') do
      post :create, leavemsg: { msgcontent: @leavemsg.msgcontent, msgname: @leavemsg.msgname }
    end

    assert_redirected_to leavemsg_path(assigns(:leavemsg))
  end

  test "should show leavemsg" do
    get :show, id: @leavemsg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leavemsg
    assert_response :success
  end

  test "should update leavemsg" do
    patch :update, id: @leavemsg, leavemsg: { msgcontent: @leavemsg.msgcontent, msgname: @leavemsg.msgname }
    assert_redirected_to leavemsg_path(assigns(:leavemsg))
  end

  test "should destroy leavemsg" do
    assert_difference('Leavemsg.count', -1) do
      delete :destroy, id: @leavemsg
    end

    assert_redirected_to leavemsgs_path
  end
end
