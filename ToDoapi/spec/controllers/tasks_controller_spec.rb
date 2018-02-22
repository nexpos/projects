require 'rails_helper'

RSpec.describe Api::V1::TasksController, type: :controller do

  it "returns all tasks" do
    task = Task.create(name:"Learn Ruby", priority: 2, due_date: Date.today)
    get :index
    expect(assigns(:tasks)).not_to be_nil
  end

  it "returns correct http response" do
    get :index
    expect(response).to have_http_status(200)
  end
end
