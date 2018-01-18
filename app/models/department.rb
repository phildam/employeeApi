class Department < ApplicationRecord

  validates :dept_no, presence: true
  validates :dept_name, presence:true

  has_many :employees, through: :department_managers
  has_many :employees, through: :departent_employees


end
