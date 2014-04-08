require 'spec_helper'

module SpecScoreApi
  describe Project do
    it 'has a valid factory' do
      FactoryGirl.build(:project).should be_valid
    end

    it 'is invalid without token when updated' do
      project = FactoryGirl.create(:project)    
      project.should be_valid
      project.token = nil
      project.should_not be_valid
    end

    it 'is invalid without owner' do
      FactoryGirl.build(:project, owner: nil).should_not be_valid
    end

    it 'creates the token on create' do
      FactoryGirl.create(:project, token: nil).should be_valid
    end
    it 'is invalid without name' do
      FactoryGirl.build(:project, name: nil).should_not be_valid
    end
  end
end
