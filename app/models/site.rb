class Site < ActiveRecord::Base
  attr_accessible :name, :region_id

  belongs_to :region

  has_many :sources

  validates :name, :presence => true, :uniqueness => { :scope => :region_id, :message => 'Site names must be unique within a region.' }

end
