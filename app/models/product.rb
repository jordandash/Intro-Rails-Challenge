class Product < ActiveRecord::Base
  attr_accessible :description, :price, :stock_quantity, :title

  validates :title, :description, :price, :stock_quantity, 
  					:presence => true

  validates :stock_quantity, 
  					:numericality => { :only_integer => true}
  					
  validates :price, 
  					:numericality => { :greater_than_or_equal_to => 0.01}
end
