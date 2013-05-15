require 'spec_helper'

describe "tasks/index" do
  before(:each) do
    assign(:tasks, [
      stub_model(Task,
        :schedule_id => 1,
        :content => "Content",
        :complete => false
      ),
      stub_model(Task,
        :schedule_id => 1,
        :content => "Content",
        :complete => false
      )
    ])
  end

  it "renders a list of tasks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
