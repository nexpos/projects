require 'rails_helper'

RSpec.describe Api::V1::MenusController, type: :controller do
  it "returns all menu items" do
    menu = Menu.create(appetizer: "salad", entree: 'chicken', dessert: 'pie')
    get :index
    expect(assigns(:menus)).not_to be_nil
  end
  it "returns correct http response" do
    get :index
    expect(response).to have_http_status(200)
  end
end
