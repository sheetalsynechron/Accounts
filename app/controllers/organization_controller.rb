class OrganizationController < ApplicationController
 before_filter :authenticate_user!
 def index

  	@organizations= Organization.all
      	 respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @organizations }
    end  
  end

  def show
     @organization = Organization.where(:id => params[:organization_id])
    respond_to do |format|
      # format.html # index.html.erb
      # format.json { render :json => @organization }
      format.js {render :layout => false}  
   end
end

def calculate_and_save

  @money_calculations = MoneyCalculation.new
  @money_calculations.calculation_amount=params[:calculation_amount]
  @money_calculations.user_id=current_user.id
  @money_calculations.organization_id = params[:organization_id]
  @money_calculations.organization_name = params[:organization_name]
  @money_calculations.user_name = "#{current_user.first_name} #{current_user.last_name}"
    respond_to do |format|
      if @money_calculations.save 
        @organization = Organization.find(params[:organization_id])
       @cal_amt = (params[:amount]).to_i + (params[:calculation_amount]).to_i
       @organization.amount = @cal_amt
      if @organization.update_attributes(:amount => @cal_amt)
        format.html { redirect_to root_url, :notice => 'Donation successfull.' }
        format.json { head :no_content }
      else
        format.html { render :action=> "edit" }
        format.json { render :json=> @money_calculations.errors, :status =>:unprocessable_entity }
      end
    end
  end
end
end
