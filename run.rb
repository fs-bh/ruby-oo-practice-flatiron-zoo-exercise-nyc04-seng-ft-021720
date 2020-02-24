require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new('my zoo 1','cleveland')
zoo2 = Zoo.new('my zoo 2','cleveland')
zoo3 = Zoo.new('my zoo 3','chicago')
zoo4 = Zoo.new('my zoo 4','chicago')
zoo5 = Zoo.new('my zoo 5','chicago')

animal1 = Animal.new('dog','doggo',rand(35..215))
animal2 = Animal.new('dog','doggo',rand(35..215))
animal3 = Animal.new('cat','catgo',rand(35..215))
animal4 = Animal.new('cat','catgo',rand(35..215))
animal5 = Animal.new('cat','catgo',rand(35..215))
animal6 = Animal.new('frog','davida',rand(35..215))
animal7 = Animal.new('frog','davidb',rand(35..215))
animal8 = Animal.new('frog','davifdasd',rand(35..215))
animal9 = Animal.new('frog','daviddsf',rand(35..215))
animal10 = Animal.new('frog','david4',rand(35..215))
animal11 = Animal.new('frog','david345',rand(35..215))
animal12= Animal.new('monkey','davi6d',rand(35..215))
animal13 = Animal.new('monkey','davifsdfgsd',rand(35..215))
animal14 = Animal.new('monkey','davidds',rand(35..215))
animal15 = Animal.new('monkey','davifdsad',rand(35..215))
animal16 = Animal.new('monkey','davsdid',rand(35..215))
animal17 = Animal.new('monkey','david',rand(35..215))
animal18 = Animal.new('monkey','davsaid',rand(35..215))
animal19 = Animal.new('monkey','davasid',rand(35..215))
animal20 = Animal.new('monkey','davasidfsa3d',rand(35..215))

[animal1, animal5, animal6, animal20].each{|a| a.zoo = zoo1}
[animal2, animal8, animal12, animal16].each{|a| a.zoo = zoo2}
[animal3, animal9, animal13, animal17].each{|a| a.zoo = zoo3}
[animal4, animal10, animal14, animal18].each{|a| a.zoo = zoo4}
[animal7, animal11, animal15, animal19].each{|a| a.zoo = zoo5}

p zoo2.animals
p zoo4.animals

p zoo1.animals
p zoo2.animal_species
p zoo1.find_by_species('dog')
p zoo1.animal_nicknames

Zoo.find_by_location('chicago')

p '--------'

# p Animal.all
p Animal.find_by_species('frog').length


# binding.pry
puts "done"
