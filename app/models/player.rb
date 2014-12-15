class Player < ActiveRecord::Base
  belongs_to :level

  attr_accessible :name, :email, :cash, :level_id

  validates :name,  :presence => true
  validates :cash, :presence => true,
      :numericality => true,
      #This will allow values of up to $9999.99 with an optional decimal place
      :format => { :with => /^\d{1,4}(\.\d{0,2})?$/ },
      :numericality => {:greater_than => 0}
end