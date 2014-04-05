# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :spec_score_api_score, :class => 'SpecScoreApi::Score' do
    user_id 1
    project_id 1
    duration 1.5
    specs 1
    succeeded 1
    failed 1
    pending 1
  end
end
