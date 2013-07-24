require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { apply_email: @job.apply_email, category: @job.category, company_description: @job.company_description, company_name: @job.company_name, contact: @job.contact, description: @job.description, keywords: @job.keywords, terms: @job.terms, title: @job.title, website: @job.website }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    put :update, id: @job, job: { apply_email: @job.apply_email, category: @job.category, company_description: @job.company_description, company_name: @job.company_name, contact: @job.contact, description: @job.description, keywords: @job.keywords, terms: @job.terms, title: @job.title, website: @job.website }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
