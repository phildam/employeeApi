class CreateDeptEmps < ActiveRecord::Migration[5.1]
  def change
    create_table :dept_emps do |t|
      t.date :from
      t.date :to_date
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
