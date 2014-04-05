require 'spec_helper'

describe "scores/edit" do
  before(:each) do
    @score = assign(:score, stub_model(Score,
      :user_id => 1,
      :project_id => 1,
      :duration => 1.5,
      :specs => 1,
      :succeeded => 1,
      :failed => 1,
      :pending => 1
    ))
  end

  it "renders the edit score form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", score_path(@score), "post" do
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
