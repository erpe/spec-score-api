require 'spec_helper'

describe 'Projects' do
  
  describe 'GET /projects' do
    before do
      FactoryGirl.create_list(:project, 5)
    end
    it 'returns projects' do
      get spec_score_api.projects_path, format: :json
      expect(response).to be_success           
      expect(json.length).to eq(5) 
    end
  end

  describe 'GET /projects/1' do
    before do
      @project = FactoryGirl.create(:project, overall_duration: 10000.587)
      SpecScoreApi::Project.reset_counters(@project.id, :scores)
    end
    
    it 'returns project name' do
      get spec_score_api.project_path(@project, format: :json)
      expect(response).to be_success
      expect(json['name']).to eq(@project.name)
    end
    
    it 'includes overall_time' do
      get spec_score_api.project_path(@project, format: :json)
      expect(response).to be_success
      expect(json['overall_duration']).to eq(@project.overall_duration)
    end

    it 'returns count_of_scores' do
      get spec_score_api.project_path(@project, format: :json)
      expect(response).to be_success
      expect(json['count_of_scores']).to eq(@project.scores.count)
    end
    
    it 'returns count of failures' do
      get spec_score_api.project_path(@project, format: :json)
      expect(response).to be_success
      expect(json['count_failures']).to eq(@project.scores.count)
    end
    
    it 'returns count of successes' do
      get spec_score_api.project_path(@project, format: :json)
      expect(response).to be_success
      expect(json['count_succeeded']).to eq(@project.scores.count)
    end
    
    it 'returns count of pending' do
      get spec_score_api.project_path(@project, format: :json)
      expect(response).to be_success
      expect(json['count_pending']).to eq(@project.scores.count)
    end

    it 'returns owner' do
      get spec_score_api.project_path(@project, format: :json)
      expect(response).to be_success
      expect(json['owner']['id']).to eq(@project.owner.id)
    end
  end
end
