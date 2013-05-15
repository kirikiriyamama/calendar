require 'spec_helper'

describe "tasks/edit" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :schedule_id => 1,
      :content => "MyString",
      :complete => false
    ))
  end

  it "renders the edit task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", task_path(@task), "post" do
      assert_select "input#task_schedule_id[name=?]", "task[schedule_id]"
      assert_select "input#task_content[name=?]", "task[content]"
      assert_select "input#task_complete[name=?]", "task[complete]"
    end
  end
end
