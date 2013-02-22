class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :address
      t.decimal :lon
      t.decimal :lat

      t.timestamps
    end
  end
end
