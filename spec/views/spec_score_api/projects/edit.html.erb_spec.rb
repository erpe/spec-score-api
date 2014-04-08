require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(SpecScoreApi::Project,
      :owner_id => 1,
      :count_specs => 1,
      :count_succeeded => 1,
      :count_failures => 1,
      :count_pending => 1,
      :duration => 1.5,
      :count_of_scores => 1
    ))
  end

  it "renders the edit project form" do
    render template: 'spec_score_api/projects/edit'

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spec_score_api.project_path(@project), "post" do
      assert_select "input#project_owner_id[name=?]", "project[owner_id]"
      assert_select "input#project_count_specs[name=?]", "project[count_specs]"
      assert_select "input#project_count_succeeded[name=?]", "project[count_succeeded]"
      assert_select "input#project_count_failures[name=?]", "project[count_failures]"
      assert_select "input#project_count_pending[name=?]", "project[count_pending]"
      assert_select "input#project_duration[name=?]", "project[duration]"
      assert_select "input#project_count_of_scores[name=?]", "project[count_of_scores]"
    end
  end
end
