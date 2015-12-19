# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DonutShop.create([{
  name: "Do-Rite Donuts & Coffee", 
  description: "Blah, Blah Blah", 
  address: "50 W Randolph St, Chicago, IL 60601",
  phone: "(312) 488-2483", 
  website: "doritedonuts.com"},
  {
  name: "The Doughnut Vault", 
  description: "Yum, Blah, Blah Blah, yum", 
  address: "401 1/2 N Franklin St Chicago, IL 60654",
  phone: "(312) 464-9544", 
  website: "thedoughnutvault.tumblr.com/"}])
