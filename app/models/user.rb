class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :geoposts

  validates(:name, presence: true, length: { maximum: 50 })
  validates(:email, presence: true)
  #validates(:password, presence: true)
end
