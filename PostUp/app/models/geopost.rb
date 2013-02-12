class Geopost < ActiveRecord::Base
  attr_accessible :content, :latitude, :longitude, :user_id
  
  belongs_to :user

  validates :content, :length => { :maximum => 140}
end
