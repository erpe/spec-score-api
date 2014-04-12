require 'spec_helper'

describe 'Scores' do
  describe 'GET /scores' do
    before do
      FactoryGirl.create_list(:score, 5)
    end

    it 'returns scores' do
      get spec_score_api.scores_path, format: :json
      expect(response).to be_success
      expect(json.length).to eq(5)
    end

  end

  describe 'GET /scores/1' do
    before do
      @score = FactoryGirl.create(:score)
    end

    it 'returns the score' do
      get spec_score_api.score_path(@score, format: :json)
      expect(response).to be_success
      expect(json['id']).to eq(@score.id)
    end
    
    it 'returns score time duration' do
      get spec_score_api.score_path(@score, format: :json)
      expect(json['duration']).to_not be_nil
    end

    it 'returns score number specs' do
      get spec_score_api.score_path(@score, format: :json)
      expect(json['specs']).to_not be_nil
    end
    
    it 'returns score number successes' do
      get spec_score_api.score_path(@score, format: :json)
      expect(json['succeeded']).to_not be_nil
    end
    
    it 'returns score number failures' do
      get spec_score_api.score_path(@score, format: :json)
      expect(json['failed']).to_not be_nil
    end
    
    it 'returns score number pending' do
      get spec_score_api.score_path(@score, format: :json)
      expect(json['pending']).to_not be_nil
    end
    
    it 'returns scores user_id' do
      get spec_score_api.score_path(@score, format: :json)
      expect(json['user_id']).to_not be_nil
    end
  
    it 'returns scores project_id' do
      get spec_score_api.score_path(@score, format: :json)
      expect(json['project_id']).to_not be_nil
    end
  end
end
