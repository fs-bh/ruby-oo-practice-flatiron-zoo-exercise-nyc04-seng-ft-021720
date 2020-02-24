class Animal
	attr_reader :species, :nickname, :weight
	attr_accessor :zoo

	@@all = []
	def self.all
		@@all
	end

	def initialize(species, nickname, weight)
		@species = species
		@nickname = nickname
		@weight = weight
		@@all.push(self)
	end

	def self.find_by_species(species)
		@@all.select{|a| a.species == species}
	end
end
