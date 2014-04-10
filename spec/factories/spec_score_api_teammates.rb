# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :teammate, class: 'SpecScoreApi::Teammate' do
    user
    project
  end
end
