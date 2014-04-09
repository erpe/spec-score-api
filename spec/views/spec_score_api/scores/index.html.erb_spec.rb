require 'spec_helper'

describe "scores/index" do
  before(:each) do
    assign(:scores, [
      stub_model(SpecScoreApi::Score,
                 user_id: 1,
                 project_id: 2,
                 duration: 1.5,
                 specs: 3,
                 succeeded: 4,
                 failed: 5,
                 pending: 6
      ),
      stub_model(SpecScoreApi::Score,
                 user_id: 1,
                 project_id: 2,
                 duration: 1.5,
                 specs: 3,
                 succeeded: 4,
                 failed: 5,
                 pending: 6
      )
    ])
  end

  it "renders a list of scores" do
    render template: 'spec_score_api/scores/index'
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", text: 1.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 1.5.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
  end
end
