class Sale < ApplicationRecord
  start_year = Date.current.beginning_of_year
  end_year = Date.current.end_of_year
  scope :this_year, lambda{ where('trans_date between ? and ?', start_year, end_year) }
  scope :two_years, lambda{ where('trans_date between ? and ?', start_year - 1.year, end_year) }
end
