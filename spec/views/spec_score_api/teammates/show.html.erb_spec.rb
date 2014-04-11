require 'spec_helper'

describe "teammates/show" do
  before(:each) do
    @project = assign(:project, stub_model(SpecScoreApi::Project, id: 2))
    @teammate = assign(:teammate, stub_model(SpecScoreApi::Teammate,
                                             user_id: 1,
                                             project_id: 2
    ))
  end

  it "renders attributes in <p>" do
    render template: 'spec_score_api/teammates/show'
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
