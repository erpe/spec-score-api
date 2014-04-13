# Read about factories at https://github.com/thoughtbot/factory_girl
require 'digest/md5'

FactoryGirl.define do
  factory :project, class: 'SpecScoreApi::Project' do
    association :owner, factory: :user
    name { Faker::Lorem.sentence(3) }
    count_specs 0
    count_succeeded 0
    count_failures 0
    count_pending 0
    overall_duration 0.0
    count_of_scores 0
    token { Digest::MD5.hexdigest("test")  }
  end
end
