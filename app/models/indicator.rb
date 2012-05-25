class Indicator < ActiveRecord::Base
  attr_accessible :name, :question, :survey_id, :answers_attributes

  belongs_to :survey

  has_many :answers, :dependent => :destroy

  accepts_nested_attributes_for :answers, :reject_if => proc { |a| a['content'].blank? }, :allow_destroy => true

  validates :name, :presence => true, :uniqueness => true
  validates :question, :presence => true, :uniqueness => true

end
