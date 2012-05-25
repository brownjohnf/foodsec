class Source < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :phone, :region_id, :sector_id, :site_id

  belongs_to :region
  belongs_to :site
  belongs_to :sector

  validates :first_name, :region_id, :sector_id, :presence => true
  validates :email, :presence => true, :uniqueness => true
  validates :phone, :uniqueness => true

end
