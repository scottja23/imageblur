class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

ken = Person.new("Ken", 28)
marco = Person.new("Marco", 31)
erica = Person.new("Erica", 29)
cindy = Person.new("Cindy", 14)

people = [ken, marco, erica, cindy]


numbers = [1, 5, 8, 1, -2, 4, 99, 23 , -66]
sorted_numbers = numbers.sort
puts sorted_numbers.inspect