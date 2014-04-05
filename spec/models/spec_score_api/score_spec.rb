require 'spec_helper'

module SpecScoreApi
  describe Score do
    it 'has a valid factory do' do
      FactoryGirl.build(:spec_score_api_score).should be_valid
    end
  end
end
