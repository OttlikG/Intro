class Player < ActiveRecord::Base
  attr_accessible :name, :email, :cash
end