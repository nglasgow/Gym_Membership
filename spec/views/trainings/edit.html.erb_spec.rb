require 'spec_helper'

describe "trainings/edit" do
  before(:each) do
    @training = assign(:training, stub_model(Training,
      :name => "MyString"
    ))
  end

  it "renders the edit training form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", training_path(@training), "post" do
      assert_select "input#training_name[name=?]", "training[name]"
    end
  end
end
