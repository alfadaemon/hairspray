require 'spec_helper'

describe "business_employees/index" do
  before(:each) do
    assign(:business_employees, [
      stub_model(BusinessEmployee,
        :business_id => "",
        :employee_id => ""
      ),
      stub_model(BusinessEmployee,
        :business_id => "",
        :employee_id => ""
      )
    ])
  end

  it "renders a list of business_employees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
