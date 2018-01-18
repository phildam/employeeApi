30.times do
  @employee=Employee.create(birth_date: Faker::Date.forward(100), first_name: Faker::Name.first_name,
                            lastname: Faker::Name.last_name,gender: Faker::Team.mascot, hire_date: Faker::Date.between(456.days.ago,Faker::Date.forward(100)))

  @salary=Salary.create(employee: @employee,salary: Faker::Bank.name, from_date: Faker::Date.between(2.days.ago,Faker::Date.forward(100)), to_date: Faker::Date.forward(100))

  @title=Title.create(employee: @employee, itle: Faker::Book.title, from_date: Faker::Date.between(100.days.ago,Faker::Date.forward(100)), to_date: Faker::Date.forward(50))

  @department=Department.create(dept_no: Faker::Book.title, dept_name: Faker::Book.author)

  @department_employee=DepartentEmployee.create(employee: @employee, department: @department, from_date: Faker::Date.between(100.days.ago,Faker::Date.forward(100)), to_date: Faker::Date.forward(50))

  @department_manager=DepartmentManager.create(employee: @employee, department: @department, from_date: Faker::Date.between(100.days.ago,Faker::Date.forward(100)), to_date: Faker::Date.forward(50))

end