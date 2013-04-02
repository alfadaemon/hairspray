class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :last_name
      t.string :id_number

      t.timestamps
    end
  end
end
