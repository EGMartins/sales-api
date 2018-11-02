# app/controllers/sales_controller.rb
class SalesController < ApplicationController
  def index
    @sales = Sale.all
    json_response @sales
  end
end
