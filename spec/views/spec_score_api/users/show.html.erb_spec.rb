require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(SpecScoreApi::User,
                                     email: "Email",
                                     nick: "Nick",
                                     count_specs: "",
                                     count_succeeded: "",
                                     count_failures_int: "Count Failures Int",
                                     overall_duration: 1.5,
                                     count_scores: "",
                                     api_token: "Api Token"
    ))
  end

  it "renders attributes in <p>" do
    render template: 'spec_score_api/users/show'
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    rendered.should match(/Nick/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Count Failures Int/)
    rendered.should match(/1.5/)
    rendered.should match(//)
    rendered.should match(/Api Token/)
  end
end
