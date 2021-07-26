User.destroy_all

u1 = User.create :name => 'Hessam', :email => 'hessam@ga.co', :password => 'chicken', :admin => true
u2 = User.create :name => 'Mina', :email => 'mina@ga.co', :password => 'chicken'
puts "#{ User.count } users"

Listing.destroy_all

l1 = Listing.create :name => 'Anshul', :age => 2, :gender => 'Female', :breed => 'Ragdoll', :color => 'White/Gray', :image => 'https://www.raveraragdolls.com/images/C0370_049.jpg', :microchipped => true, :desexed => true
l2 = Listing.create :name => 'Pishul', :age => 1, :gender => 'Male', :breed => 'Ragdoll', :color => 'Drak gray', :image => 'http://imgur.com/O9n2213.jpg', :microchipped => true, :desexed => true
puts "#{ Listing.count } listings"


# Associations
puts "Listings and Users"
u1.listings << l1
u2.listings << l2
