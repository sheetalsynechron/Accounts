class MoneyCalculationController < ApplicationController
  def index
  	  @moneycalculation= MoneyCalculation.all
      respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @moneycalculation }
    end  
  end
end
