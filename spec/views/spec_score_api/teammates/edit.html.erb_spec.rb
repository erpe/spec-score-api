require 'spec_helper'

describe "teammates/edit" do
  before(:each) do
    @project = assign(:project, stub_model(SpecScoreApi::Project, id: 2))
    @teammate = assign(:teammate, stub_model(SpecScoreApi::Teammate,
                                             id: 5,
                                             user_id: 1,
                                             project_id: 2
    ))
  end

  it "renders the edit teammate form" do
    render template: 'spec_score_api/teammates/edit'
    # render 'spec_score_api/teammates/form'

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", 
                  spec_score_api.project_teammate_path(@project, @teammate), 
                  "post" do
      assert_select "input#teammate_user_id[name=?]", "teammate[user_id]"
      assert_select "input#teammate_project_id[name=?]", "teammate[project_id]"
    end
  end
end
