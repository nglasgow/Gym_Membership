require 'spec_helper'

describe "enrollments/edit" do
  before(:each) do
    @enrollment = assign(:enrollment, stub_model(Enrollment,
      :type => ""
    ))
  end

  it "renders the edit enrollment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", enrollment_path(@enrollment), "post" do
      assert_select "input#enrollment_type[name=?]", "enrollment[type]"
    end
  end
end
