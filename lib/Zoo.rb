class Zoo
	attr_reader :name, :location

	@@all = []
	def self.all
		@@all
	end

	def initialize(name, location)
		@name = name
		@location = location
		@@all.push(self)
	end

	def animals
		Animal.all.select do |a|
			a.zoo == self
		end
	end

	def animal_species
		# species = self.animals.map do |a|
		# 	a.species
		# end
		# species.uniq
		self.animals.map{|a| a.species}.uniq
	end

	def find_by_species(species)
		self.animals.select do |a|
			a.species == species
		end
	end

	def animal_nicknames
		self.animals.map{|a| a.nickname}
	end

	def self.find_by_location(location)
		@@all.select{|z| z.location == location}
	end

end
