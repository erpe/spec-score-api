require 'spec_helper'

module SpecScoreApi
  describe Teammate do
    it 'has a valid factory' do
      FactoryGirl.build(:teammate).should be_valid
    end

    it 'responds to user' do
      FactoryGirl.build(:teammate).should respond_to(:user)
    end
    
    it 'responds to project' do
      FactoryGirl.build(:teammate).should respond_to(:project)
    end
    
    it 'returns a user' do
      FactoryGirl.create(:teammate).user.should be_a(User)
    end

    it 'returns a project' do
      FactoryGirl.create(:teammate).project.should be_a(Project)
    end

    it 'responds to nick' do
      FactoryGirl.create(:teammate).should respond_to(:nick)
    end
    
    it 'responds to email' do
      FactoryGirl.create(:teammate).should respond_to(:email)
    end
  end
end
