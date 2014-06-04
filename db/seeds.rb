
# using find_or_create_by prevents repeatation.
Thing.find_or_create_by(name: 'Shaker') do |thing|
	thing.description ='He is Happy'
end

Thing.find_or_create_by(name: 'Shanna') do |thing|
	thing.description ='She is awesome'
end

Thing.find_or_create_by(name: 'Isaai') do |thing|
	thing.description ='He is the best'
end

if Thing.all.count < 201 # it caps the size of the database at the 200 not more. 
	200.times do #create 200 random seeds in the database 
	Thing.create(name: Forgery(:lorem_ipsum).words(2, :random => true ), description: Forgery(:lorem_ipsum).words(3, :random => true))
	end 
end 