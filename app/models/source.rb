class Source < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :phone, :region, :sector, :site
end
