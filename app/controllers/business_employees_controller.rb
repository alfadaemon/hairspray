class BusinessEmployeesController < ApplicationController
  # GET /business_employees
  # GET /business_employees.json
  def index
    @business_employees = BusinessEmployee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @business_employees }
    end
  end

  # GET /business_employees/1
  # GET /business_employees/1.json
  def show
    @business_employee = BusinessEmployee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @business_employee }
    end
  end

  # GET /business_employees/new
  # GET /business_employees/new.json
  def new
    @business_employee = BusinessEmployee.new
    @business = Business.find(:all,:order=>"name")
    @employee = Employee.find(:all,:order=>"name")

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @business_employee }
    end
  end

  # GET /business_employees/1/edit
  def edit
    @business_employee = BusinessEmployee.find(params[:id])
    @business = Business.find(:all,:order=>"name")
    @employee = Employee.find(:all,:order=>"name")
  end

  # POST /business_employees
  # POST /business_employees.json
  def create
    @business_employee = BusinessEmployee.new(params[:business_employee])

    respond_to do |format|
      if @business_employee.save
        format.html { redirect_to @business_employee, notice: 'Business employee was successfully created.' }
        format.json { render json: @business_employee, status: :created, location: @business_employee }
      else
        format.html { render action: "new" }
        format.json { render json: @business_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /business_employees/1
  # PUT /business_employees/1.json
  def update
    @business_employee = BusinessEmployee.find(params[:id])

    respond_to do |format|
      if @business_employee.update_attributes(params[:business_employee])
        format.html { redirect_to @business_employee, notice: 'Business employee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @business_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_employees/1
  # DELETE /business_employees/1.json
  def destroy
    @business_employee = BusinessEmployee.find(params[:id])
    @business_employee.destroy

    respond_to do |format|
      format.html { redirect_to business_employees_url }
      format.json { head :no_content }
    end
  end
end
