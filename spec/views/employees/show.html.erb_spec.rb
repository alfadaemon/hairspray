require 'spec_helper'

describe "employees/show" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :name => "Name",
      :last_name => "Last Name",
      :id_number => "Id Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Id Number/)
  end
end
