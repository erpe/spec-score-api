require 'spec_helper'

describe 'Projects' do
  
  describe 'GET /projects' do
    before do
      FactoryGirl.create_list(:project, 5)
    end
    it 'returns projects' do
      get spec_score_api.projects_path, format: :json
      expect(response).to be_success           
      json = JSON.parse(response.body)
      expect(json.length).to eq(5) 
    end
  end

  describe 'GET /projects/1' do
    before do
      @project = FactoryGirl.create(:project, overall_duration: 10000.587)
    end
    
    it 'returns project name' do
      get spec_score_api.project_path(@project, format: :json)
      expect(response).to be_success
      json = JSON.parse(response.body)
      expect(json['name']).to eq(@project.name)
    end
    it 'includes overall_time' do
      get spec_score_api.project_path(@project, format: :json)
      expect(response).to be_success
      json = JSON.parse(response.body)
      expect(json['overall_duration']).to eq(@project.overall_duration)
    end
    
  end
end
