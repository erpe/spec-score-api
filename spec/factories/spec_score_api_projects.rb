# Read about factories at https://github.com/thoughtbot/factory_girl
require 'digest/md5'

FactoryGirl.define do
  factory :project, :class => 'SpecScoreApi::Project' do
    association :owner, factory: :user
    name { Faker::Lorem.sentence(3) }
    count_specs 1
    count_succeeded 1
    count_failures 1
    count_pending 1
    duration 1.5
    count_of_scores 1
    token { Digest::MD5.hexdigest("test")  }
  end
end
