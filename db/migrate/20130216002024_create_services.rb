class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :description
      t.references :category

      t.timestamps
    end
    add_index :services, :category_id
  end
end
