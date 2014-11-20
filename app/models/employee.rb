class Employee < ActiveRecord::Base
  has_many :pay_periods
end
