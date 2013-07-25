require 'spec_helper'

describe "enrollments/show" do
  before(:each) do
    @enrollment = assign(:enrollment, stub_model(Enrollment,
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
  end
end
