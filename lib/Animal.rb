class Animal
    attr_reader :species, :nickname
    attr_accessor :weight, :zoo

    @@all = []
    def initialize(species, nickname, weight, zoo)
        @species = species
        @nickname = nickname
        @weight = weight
        @zoo = zoo
        self.save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def zoo
        self.zoo
    end

    def self.find_by_species(species)
        self.class.all.select {|a|a.species == species}
    end


end
