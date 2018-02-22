require 'rails_helper'

RSpec.describe "Task Requests", :type => :request do

  describe "tasks API" do
    let(:homework){FactoryBot.create(:homework)}
    let(:email){FactoryBot.create(:email)}
    let(:user_with_tasks){FactoryBot.create(:user_with_tasks)}
    let(:token) { authentication_token(user_with_tasks) }


    it 'returns a list of tasks' do
      task1 = homework
      task2 = email
      get v1_tasks_path, headers: { AUTHORIZATION: "Bearer #{token}" }

      # json = JSON.parse(response.body)
      expect(response).to be_success
      expect(json.length).to eq(2)
    end

      it 'returns the requested task' do
        get v1_task_path(homework.id), headers: headers

        expect(response).to be_success
        expect(json['name']).to eq("complete homework")
      end

      it 'creates a new task' do
        user =  FactoryBot.create(:user)
        headers = {AUTHORIZATION: "Bearer #{authentication_token(user)}"}
        task_attributes = FactoryGirl.attributes_for(:email, user_id: user.id)

        expect {
          post "/v1/tasks", params: { task: task_attributes }, headers: headers
        }.to change(Task, :count).by(1)

        expect(response.status).to eq(201)
      end

      it 'unauthorized user is given 401' do
        get '/v1/tasks'
        expect(response.status).to eq(401)
      end
  end

end

# def json
#   JSON.parse(response.body)
# end
#
# def authentication_token(user)
#   post '/v1/user_token', params: {auth: {email: user.email, password: user.password}}
#   json['jwt']
# end
