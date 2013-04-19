class MoneyCalculation < ActiveRecord::Base
  attr_accessible :calculation_amount, :organization_id, :organization_name, :user_id, :user_name
   belongs_to :organisation
end
