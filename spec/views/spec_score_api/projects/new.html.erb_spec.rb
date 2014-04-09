require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(SpecScoreApi::Project,
                                owner_id: 1,
                                count_specs: 1,
                                count_succeeded: 1,
                                count_failures: 1,
                                count_pending: 1,
                                duration: 1.5,
                                count_of_scores: 1
    ).as_new_record)
  end

  it "renders new project form" do
    render template: 'spec_score_api/projects/new'

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spec_score_api.projects_path, "post" do
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
