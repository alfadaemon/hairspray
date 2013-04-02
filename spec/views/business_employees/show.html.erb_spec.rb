require 'spec_helper'

describe "business_employees/show" do
  before(:each) do
    @business_employee = assign(:business_employee, stub_model(BusinessEmployee,
      :business_id => "",
      :employee_id => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
