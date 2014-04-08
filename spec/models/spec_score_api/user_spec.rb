require 'spec_helper'

module SpecScoreApi
  describe User do
    it 'has a valid factory' do
      FactoryGirl.build(:user).should be_valid
    end
  end
end
