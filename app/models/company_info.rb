class CompanyInfo < ActiveRecord::Base
  validates :name, presence: true
end
