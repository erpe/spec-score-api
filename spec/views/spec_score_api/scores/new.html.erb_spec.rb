require 'spec_helper'

describe "scores/new" do
  before(:each) do
    assign(:score, stub_model(SpecScoreApi::Score,
                              user_id: 1,
                              project_id: 1,
                              duration: 1.5,
                              specs: 1,
                              succeeded: 1,
                              failed: 1,
                              pending: 1
    ).as_new_record)
  end

  it "renders new score form" do
    render template: 'spec_score_api/scores/new'

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spec_score_api.scores_path, "post" do
      assert_select "input#score_user_id[name=?]", "score[user_id]"
      assert_select "input#score_project_id[name=?]", "score[project_id]"
      assert_select "input#score_duration[name=?]", "score[duration]"
      assert_select "input#score_specs[name=?]", "score[specs]"
      assert_select "input#score_succeeded[name=?]", "score[succeeded]"
      assert_select "input#score_failed[name=?]", "score[failed]"
      assert_select "input#score_pending[name=?]", "score[pending]"
    end
  end
end
