class Salary < ApplicationRecord
  belongs_to :employee

  validates :salary, presence: true
  validates :from_date, presence: true
  validates :to_date, presence: true


end
