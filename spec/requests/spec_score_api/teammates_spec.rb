require 'spec_helper'

describe 'Teammates' do

  describe 'GET /projects/1/teammates' do
    before do 
      @project = FactoryGirl.create(:project)
      FactoryGirl.create_list(:teammate, 5, project: @project)
    end

    it 'returns teammates' do
      get spec_score_api.project_teammates_path(@project, format: :json)
      expect(response).to be_success
      expect(json.length).to eq(5)
    end

    it 'returns users nick' do
      get spec_score_api.project_teammates_path(@project, format: :json)
      expect(json[0]).to include('nick')
    end
    
    it 'returns users email' do
      get spec_score_api.project_teammates_path(@project, format: :json)
      expect(json[0]).to include('email')
    end
  end

end
