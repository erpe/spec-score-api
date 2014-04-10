require 'spec_helper'

describe "teammates/new" do
  before(:each) do
    assign(:teammate, stub_model(Teammate,
                                 user_id: 1,
                                 project_id: 1
    ).as_new_record)
  end

  it "renders new teammate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", teammates_path, "post" do
      assert_select "input#teammate_user_id[name=?]", "teammate[user_id]"
      assert_select "input#teammate_project_id[name=?]", "teammate[project_id]"
    end
  end
end
