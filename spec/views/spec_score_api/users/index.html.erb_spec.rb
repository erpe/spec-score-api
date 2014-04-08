require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(SpecScoreApi::User,
        :email => "Email",
        :nick => "Nick",
        :count_specs => "",
        :count_succeeded => "",
        :count_failures_int => "Count Failures Int",
        :overall_duration => 1.5,
        :count_scores => "",
        :api_token => "Api Token"
      ),
      stub_model(SpecScoreApi::User,
        :email => "Email",
        :nick => "Nick",
        :count_specs => "",
        :count_succeeded => "",
        :count_failures_int => "Count Failures Int",
        :overall_duration => 1.5,
        :count_scores => "",
        :api_token => "Api Token"
      )
    ])
  end

  it "renders a list of users" do
    render template: 'spec_score_api/users/index'
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Nick".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Api Token".to_s, :count => 2
  end
end
