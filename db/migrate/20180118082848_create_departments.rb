class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.string :dept_no
      t.string :dept_name

      t.timestamps
    end
  end
end
