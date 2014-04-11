require 'spec_helper'

describe "teammates/index" do
  before(:each) do  
    assign(:project, stub_model(SpecScoreApi::Project, id: 2)) 
    assign(:teammates, [
      stub_model(SpecScoreApi::Teammate,
                 user_id: 1,
                 project_id: 2
      ),
      stub_model(SpecScoreApi::Teammate,
                 user_id: 1,
                 project_id: 2
      )
    ])
  end

  it "renders a list of teammates" do
    render template: 'spec_score_api/teammates/index'
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", text: 1.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
