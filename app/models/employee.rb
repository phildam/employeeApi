class Employee < ApplicationRecord
  validates :first_name, presence: true
  validates :lastname, presence: true, length: { in: 2..30}
  validates :gender, presence: true, length: {in: 3..20}
  validates :hire_date, presence: true;
  validates :birth_date, presence: true;

  has_many :salaries
  validates_associated :salaries

  has_many :titles
  validates_associated :titles

  has_many :departent_employees
  validates_associated :departent_employees

  has_many :department_managers
  validates_associated :department_managers

end
