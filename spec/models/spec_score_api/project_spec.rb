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

    it 'responds to .teammates' do
      FactoryGirl.build(:project).should respond_to(:teammates)
    end

    it 'responds to .users' do
      FactoryGirl.build(:project).should respond_to(:users)
    end

    it 'returns 4 users' do
      users = FactoryGirl.create_list(:user,  4)
      project = FactoryGirl.create(:project)
      users.each do |u|
        FactoryGirl.create(:teammate, user: u, project: project)
      end
      project.reload
      project.users.count.should eq(4)
    end
  end
end
