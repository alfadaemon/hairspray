class CreateBusinessEmployees < ActiveRecord::Migration
  def change
    create_table :business_employees do |t|
      t.integer :business_id
      t.integer :employee_id

      t.timestamps
    end
  end
end
