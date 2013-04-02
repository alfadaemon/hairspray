require 'spec_helper'

describe "employees/index" do
  before(:each) do
    assign(:employees, [
      stub_model(Employee,
        :name => "Name",
        :last_name => "Last Name",
        :id_number => "Id Number"
      ),
      stub_model(Employee,
        :name => "Name",
        :last_name => "Last Name",
        :id_number => "Id Number"
      )
    ])
  end

  it "renders a list of employees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Id Number".to_s, :count => 2
  end
end
