class Region < ActiveRecord::Base
  attr_accessible :name

  has_many :sources
  has_many :sites

  validates :name, :presence => true, :uniqueness => true

end
