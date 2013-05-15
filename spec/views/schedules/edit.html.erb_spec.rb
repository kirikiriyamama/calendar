require 'spec_helper'

describe "schedules/edit" do
  before(:each) do
    @schedule = assign(:schedule, stub_model(Schedule,
      :summary => "MyString",
      :description => "MyText",
      :notes => "MyText"
    ))
  end

  it "renders the edit schedule form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", schedule_path(@schedule), "post" do
      assert_select "input#schedule_summary[name=?]", "schedule[summary]"
      assert_select "textarea#schedule_description[name=?]", "schedule[description]"
      assert_select "textarea#schedule_notes[name=?]", "schedule[notes]"
    end
  end
end
