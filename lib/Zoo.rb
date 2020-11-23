class Zoo
    attr_reader :location
    attr_accessor :name

    @@all = []

    def initialize(location, name)
        @location = location
        @name = name
        self.save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select {|a|a.zoo == self}
    end

    def animal_species
        self.animals.map {|a|a.species}
    end

    def find_by_species(species)
        self.animals.select {|a| a.species == species}
    end

    def animal_nicknames
        self.animals.map {|a|a.nickname}
    end

    def self.find_by_location(location)
        self.all.find{|z|z.location == location}
    end

end
