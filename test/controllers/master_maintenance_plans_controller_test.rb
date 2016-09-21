require 'test_helper'

class MasterMaintenancePlansControllerTest < ActionController::TestCase
  setup do
    @master_maintenance_plan = master_maintenance_plans(:one)
  end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:master_maintenance_plans)
  # end
  #
  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end
  #
  # test "should create master_maintenance_plan" do
  #   assert_difference('MasterMaintenancePlan.count') do
  #     post :create, master_maintenance_plan: {  }
  #   end
  #
  #   assert_redirected_to master_maintenance_plan_path(assigns(:master_maintenance_plan))
  # end
  #
  # test "should show master_maintenance_plan" do
  #   get :show, id: @master_maintenance_plan
  #   assert_response :success
  # end
  #
  # test "should get edit" do
  #   get :edit, id: @master_maintenance_plan
  #   assert_response :success
  # end
  #
  # test "should update master_maintenance_plan" do
  #   patch :update, id: @master_maintenance_plan, master_maintenance_plan: {  }
  #   assert_redirected_to master_maintenance_plan_path(assigns(:master_maintenance_plan))
  # end
  #
  # test "should destroy master_maintenance_plan" do
  #   assert_difference('MasterMaintenancePlan.count', -1) do
  #     delete :destroy, id: @master_maintenance_plan
  #   end
  #
  #   assert_redirected_to master_maintenance_plans_path
  # end
end
