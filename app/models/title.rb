class Title < ApplicationRecord
  belongs_to :employee
  validates :itle, presence: true
  validates :from_date, presence: true
  validates :to_date, presence: true

  #before validation :ensure_title_is_in_companyTitles

  # private
  #   def ensure_title_is_in_companyTitles
  #     companyTitles=["Product Manager","programmer","Product Designer",
  #     "IT manager","Devops Engineer","Country Manager"]
  #     companyTitles.each() do |position|
  #       if self.itle =~ /#{position}/i
  #         self.itle=itle
  #       end
  #     end
  #   end
  #
end
