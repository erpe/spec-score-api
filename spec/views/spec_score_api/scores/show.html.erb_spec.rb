require 'spec_helper'

describe "scores/show" do
  before(:each) do
    @score = assign(:score, stub_model(SpecScoreApi::Score,
      :user_id => 1,
      :project_id => 2,
      :duration => 1.5,
      :specs => 3,
      :succeeded => 4,
      :failed => 5,
      :pending => 6
    ))
  end

  it "renders attributes in <p>" do
    render template: 'spec_score_api/scores/show'
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/1.5/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
  end
end
