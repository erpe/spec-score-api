require 'spec_helper'

describe 'Teammates' do
  
  before do 
    @project = FactoryGirl.create(:project)
    FactoryGirl.create_list(:teammate, 5, project: @project)
  end
  
  describe 'GET /projects/1/teammates' do
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

  describe 'GET /projects/1/teammates/1' do
    it 'shows id' do
      mate = @project.teammates.first
      get spec_score_api.project_teammate_path(@project, mate,  format: :json)
      expect(json['id']).to eq(mate.id)
    end
  end

end
