module V1
  class SalesController < ApplicationController
    def index
      @sales = Sale.all.paginate(page: params[:page], per_page: 50)
      json_response @sales
    end
    def year_sales
      @this_year_sales = Sale.this_year.group_by_month(:trans_date).sum(:total_extax_value)
      json_response @this_year_sales
    end
    def two_years_sales
      @two_years_sales = Sale.two_years.group_by_year(:trans_date).sum(:total_extax_value)
      json_response @two_years_sales
    end
  end
end
