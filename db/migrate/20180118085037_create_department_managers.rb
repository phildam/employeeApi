class CreateDepartmentManagers < ActiveRecord::Migration[5.1]
  def change
    create_table :department_managers do |t|
      t.references :department, foreign_key:true
      t.references :employee, foreign_key: true
      t.date :from_date
      t.date :to_date

      t.timestamps
    end
  end
end
