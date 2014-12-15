class Level < ActiveRecord::Base
  has_many :players, :inverse_of => :level

  attr_accessible :name

  validates :name,  :presence => true
end