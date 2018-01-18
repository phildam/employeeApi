class CreateDepartentEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :departent_employees do |t|
      t.date :from_date
      t.date :to_date
      t.references :employee, foreign_key: true
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
