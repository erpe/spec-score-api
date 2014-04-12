# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :score, class: 'SpecScoreApi::Score' do
    user
    project
    duration 1.5
    specs 1
    succeeded 1
    failed 1
    pending 1
  end
end
