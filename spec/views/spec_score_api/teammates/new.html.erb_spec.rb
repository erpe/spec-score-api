require 'spec_helper'

describe "teammates/new" do
  before(:each) do
    @project = assign(:project, stub_model(SpecScoreApi::Project, id: 1))
    @teammate = assign( :teammate, stub_model(SpecScoreApi::Teammate, id: 1, user_id: 1, project_id: 1).as_new_record)
  end

  it "renders new teammate form" do
    render template: 'spec_score_api/teammates/new'

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spec_score_api.project_teammates_path(@project), "post" do
      assert_select "input#teammate_user_id[name=?]", "teammate[user_id]"
      assert_select "input#teammate_project_id[name=?]", "teammate[project_id]"
    end
  end
end
