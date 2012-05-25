class Indicator < ActiveRecord::Base
  attr_accessible :name, :question, :survey_id

  belongs_to :survey

  validates :name, :presence => true, :uniqueness => true
  validates :question, :presence => true, :uniqueness => true

end
