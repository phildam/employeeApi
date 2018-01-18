class DepartmentManager < ApplicationRecord
  belongs_to :employee
  belongs_to :department

  validates :from_date, presence: true
  validates :to_date, presence:true

end
