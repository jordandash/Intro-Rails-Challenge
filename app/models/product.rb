class Product < ActiveRecord::Base
  attr_accessible :description, :price, :stock_quantity, :title
end
