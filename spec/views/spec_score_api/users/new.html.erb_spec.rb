require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(SpecScoreApi::User,
      :email => "MyString",
      :nick => "MyString",
      :count_specs => "",
      :count_succeeded => "",
      :count_failures_int => "MyString",
      :overall_duration => 1.5,
      :count_scores => "",
      :api_token => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render template: 'spec_score_api/users/new'

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spec_score_api.users_path, "post" do
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_nick[name=?]", "user[nick]"
      assert_select "input#user_count_specs[name=?]", "user[count_specs]"
      assert_select "input#user_count_succeeded[name=?]", "user[count_succeeded]"
      assert_select "input#user_count_failures_int[name=?]", "user[count_failures_int]"
      assert_select "input#user_overall_duration[name=?]", "user[overall_duration]"
      assert_select "input#user_count_scores[name=?]", "user[count_scores]"
      assert_select "input#user_api_token[name=?]", "user[api_token]"
    end
  end
end
