class Organization < ActiveRecord::Base
  attr_accessible :amount, :name, :user_id

  belongs_to :user
  has_many :money_calculation
end
