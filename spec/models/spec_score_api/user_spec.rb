require 'spec_helper'

module SpecScoreApi
  describe User do
    it 'has a valid factory' do
      FactoryGirl.build(:user).should be_valid
    end

    it 'responds to projects' do
      FactoryGirl.build(:user).should respond_to(:projects)
    end
   
    it 'responds to .engagements' do
      FactoryGirl.build(:user).should respond_to(:engagements)
    end

    it 'returns teammates' do
      user = FactoryGirl.create(:user)
      project = FactoryGirl.create(:project)
      FactoryGirl.create(:teammate, user: user, project: project)
      user.reload
      user.engagements.first.should be_a(Teammate)
    end

    it 'has projects' do
      user = FactoryGirl.create(:user)
      FactoryGirl.create(:teammate, user: user)
      user.projects.count.should > 0
    end
  end
end
