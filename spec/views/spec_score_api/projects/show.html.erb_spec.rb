require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(SpecScoreApi::Project,
      :owner_id => 1,
      :count_specs => 2,
      :count_succeeded => 3,
      :count_failures => 4,
      :count_pending => 5,
      :duration => 1.5,
      :count_of_scores => 6
    ))
  end

  it "renders attributes in <p>" do
    render template: 'spec_score_api/projects/show'
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/1.5/)
    rendered.should match(/6/)
  end
end
