require 'spec_helper'

describe "enrollments/index" do
  before(:each) do
    assign(:enrollments, [
      stub_model(Enrollment,
        :type => "Type"
      ),
      stub_model(Enrollment,
        :type => "Type"
      )
    ])
  end

  it "renders a list of enrollments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
