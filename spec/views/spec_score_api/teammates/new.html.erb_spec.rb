require 'spec_helper'

describe "teammates/new" do
  before(:each) do
    assign(:project, stub_model(SpecScoreApi::Project, id: 2))
    assign(:teammate, stub_model(SpecScoreApi::Teammate, 
                                 id: 1, 
                                 user_id: 1, 
                                 project_id: 2 
                                 ).as_new_record)
  end

  it "renders new teammate form" do
    render template: 'spec_score_api/teammates/new'

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", 
                  spec_score_api.project_teammates_url(project_id: 2), "post" do
      assert_select "input#teammate_user_id[name=?]", "teammate[user_id]"
      assert_select "input#teammate_project_id[name=?]", "teammate[project_id]"
    end
  end
end
