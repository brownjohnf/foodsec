class Survey < ActiveRecord::Base
  attr_accessible :name, :indicators_attributes

  has_many :indicators, :dependent => :destroy

  accepts_nested_attributes_for :indicators, :reject_if => :all_blank, :allow_destroy => true

  validates :name, :presence => true, :uniqueness => true

end
