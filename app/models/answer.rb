class Answer < ActiveRecord::Base
  attr_accessible :content, :indicator_id

  belongs_to :question

  validates :content, :presence => true, :uniqueness => { :scope => :indicator_id, :message => 'Answers must be unique per indicator' }

end
