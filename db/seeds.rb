# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create(
  :email => 'admin@example.com',
  :password => 'password'
)
admin.roles << Role.find_or_create_by_name('Admin')
admin.save!
admin.confirm!

Region.create([
  { :name => 'Kaolack' },
  { :name => 'Fatick' },
  { :name => 'Kaffrine' },
  { :name => 'Dakar' },
  { :name => 'Kedougou' },
  { :name => 'Kolda' },
  { :name => 'Linguere' },
  { :name => 'Louga' },
  { :name => 'St. Louis' },
  { :name => 'Mattam' },
  { :name => 'Thies' },
  { :name => 'Tambacounda' }
])

Site.create([
  { :name => 'Dakar' },
  { :name => 'Ndorong Sereer' }
])

Sector.create([
  { :name => 'Urban Agriculture' },
  { :name => 'Sustainable Rural Agriculture' },
  { :name => 'Agroforestry' },
  { :name => 'CED' },
  { :name => 'Health Education' },
  { :name => 'Environmental Education' }
])

