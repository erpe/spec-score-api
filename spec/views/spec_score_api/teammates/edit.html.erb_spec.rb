require 'spec_helper'

describe "teammates/edit" do
  before(:each) do
    @teammate = assign(:teammate, stub_model(Teammate,
                                             user_id: 1,
                                             project_id: 1
    ))
  end

  it "renders the edit teammate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", teammate_path(@teammate), "post" do
      assert_select "input#teammate_user_id[name=?]", "teammate[user_id]"
      assert_select "input#teammate_project_id[name=?]", "teammate[project_id]"
    end
  end
end
