class Sector < ActiveRecord::Base
  attr_accessible :name

  has_many :sources

  validates :name, :presence => true, :uniqueness => true

end
