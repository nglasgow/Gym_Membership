require 'spec_helper'

describe "trainings/index" do
  before(:each) do
    assign(:trainings, [
      stub_model(Training,
        :name => "Name"
      ),
      stub_model(Training,
        :name => "Name"
      )
    ])
  end

  it "renders a list of trainings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
