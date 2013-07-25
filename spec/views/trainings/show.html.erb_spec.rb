require 'spec_helper'

describe "trainings/show" do
  before(:each) do
    @training = assign(:training, stub_model(Training,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
