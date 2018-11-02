module V1
  class SalesController < ApplicationController
    def index
      @sales = Sale.all
      json_response @sales
    end
  end
end
