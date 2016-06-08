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
  description: "A hole in the wall where they have meditated on the whole donut experience and only give you the best.", 
  address: "401 1/2 N Franklin St Chicago, IL 60654",
  phone: "(312) 464-9544", 
  website: "thedoughnutvault.tumblr.com"},
  {
  name: "Stans Donuts", 
  description: "Flavored donuts with an emphasis on the filling and toppings.  They have a cake donut.", 
  address: "1560 N. Damen Avenue Chicago, IL 660622",
  phone: "(773) 360-7386", 
  website: "http://www.stansdonutschicago.com/"},
  {
  name: "M 2 Cafe", 
  description: "A coffee shop with donuts.  I don't know where the donuts came from, but they were pretty good (and organic).", 
  address: "850 W Jackson Blvd, Chicago, IL 60607",
  phone: "(312) 265-1824", 
  website: "morganstreetcafe.com"},
  {
  name: "Glazed and Infused", 
  description: "Focused on the wow factor of toppings and glazes of their donuts. ", 
  address: " 813 W Fulton Market, Chicago, IL 60607",
  phone: "(312) 226-5556", 
  website: "goglazed.com"}

  ])
Donut.create([{
    name: "Vanilla Creme",
    description: "Yummy, yummy, yum with sugar",
    occasion: "Splurge",
    type_of_donut: "Yeast",
    donut_shop_id: 1
    },
    {
    name: "Buttermilk Old Fashioned",
    description: "Cake Joy",
    occasion: "Economy",
    type_of_donut: "Old Fashion",
    donut_shop_id: 2},
    {
    name: "Vanilla with glaze and prinkles",
    description: "A tasty (and organic) delight with surprisingly good texture for being found at a coffee shop",
    occasion: "Economy",
    type_of_donut: "Old Fashion",
    donut_shop_id: 3 
    }
  ])


User.create([{
  first_name: "Charlie",
  last_name: "Bear",
  email: "chaysmagan@gmail.com",
  password: "love"
  }])

DonutRating.create([
  {
  user_id: 1,
  donut_id: 1,
  donut_shop_id: 2,
  score: 4,
  description: "It was tasty",
  occasion: "On the way home"
  },
   {
  user_id: 1,
  donut_id: 2,
  donut_shop_id: 1,
  score: 3,
  description: "It was tasty",
  occasion: "Early morning treat"
  },
   {
  user_id: 1,
  donut_id: 3,
  donut_shop_id: 1,
  score: 5,
  description: "Perfect texture",
  occasion: "After a long day schlepping around Chicago."
  }
  ])













