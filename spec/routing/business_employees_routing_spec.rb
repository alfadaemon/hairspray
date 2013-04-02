require "spec_helper"

describe BusinessEmployeesController do
  describe "routing" do

    it "routes to #index" do
      get("/business_employees").should route_to("business_employees#index")
    end

    it "routes to #new" do
      get("/business_employees/new").should route_to("business_employees#new")
    end

    it "routes to #show" do
      get("/business_employees/1").should route_to("business_employees#show", :id => "1")
    end

    it "routes to #edit" do
      get("/business_employees/1/edit").should route_to("business_employees#edit", :id => "1")
    end

    it "routes to #create" do
      post("/business_employees").should route_to("business_employees#create")
    end

    it "routes to #update" do
      put("/business_employees/1").should route_to("business_employees#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/business_employees/1").should route_to("business_employees#destroy", :id => "1")
    end

  end
end
