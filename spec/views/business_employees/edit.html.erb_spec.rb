require 'spec_helper'

describe "business_employees/edit" do
  before(:each) do
    @business_employee = assign(:business_employee, stub_model(BusinessEmployee,
      :business_id => "",
      :employee_id => ""
    ))
  end

  it "renders the edit business_employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => business_employees_path(@business_employee), :method => "post" do
      assert_select "input#business_employee_business_id", :name => "business_employee[business_id]"
      assert_select "input#business_employee_employee_id", :name => "business_employee[employee_id]"
    end
  end
end
