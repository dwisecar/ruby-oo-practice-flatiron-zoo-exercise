require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
z1 = Zoo.new("Seattle", "Woodland Park")

goat = Animal.new("Goat", "Henry", 45, z1)
giraffe = Animal.new("Giraffe", "Lana", 430, z1)
falcon = Animal.new("Falcon", "Red", 6, z1)
ram = Animal.new("Ram", "Henry", 250, z1)

binding.pry
puts "done"
