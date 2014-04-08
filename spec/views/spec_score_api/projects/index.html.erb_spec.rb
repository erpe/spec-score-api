require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(SpecScoreApi::Project,
        :owner_id => 1,
        :count_specs => 2,
        :count_succeeded => 3,
        :count_failures => 4,
        :count_pending => 5,
        :duration => 1.5,
        :count_of_scores => 6
      ),
      stub_model(SpecScoreApi::Project,
        :owner_id => 1,
        :count_specs => 2,
        :count_succeeded => 3,
        :count_failures => 4,
        :count_pending => 5,
        :duration => 1.5,
        :count_of_scores => 6
      )
    ])
  end

  it "renders a list of projects" do
    render template: 'spec_score_api/projects/index'
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
