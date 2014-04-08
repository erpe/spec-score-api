# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user, :class => 'SpecScoreApi::User' do
    email { Faker::Internet.email }
    nick  { Faker::Name.first_name }
    count_specs 0
    count_succeeded 0
    count_failures  0 
    overall_duration 1.5
    count_scores 0
    api_token "MyString"
  end
end
