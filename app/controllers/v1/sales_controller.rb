module V1
  class SalesController < ApplicationController
    def index
      @sales = Sale.all.paginate(page: params[:page], per_page: 50)
      json_response @sales
    end
  end
end
