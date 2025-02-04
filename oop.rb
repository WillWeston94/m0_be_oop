# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    attr_reader :name, :color

    def initialize(name)
        @name = name
        @color = "silver"   # default attribute color
    end

    def say(message)       # object instance for method say 
        "*~* #{message} *~*"
    end
end

unicorn1 = Unicorn.new("Twilight")      # dynamic name attribute
p unicorn1                 # unicorn1 in terminal

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_reader :name, :pet, :thirsty

    def initialize(name, pet ="bat", thirsty = true)
        @name = name
        @pet = pet
        @thirsty = thirsty
    end

    def drink_change(drink_change)
        @thirsty = false
    end
end

vampire1 = Vampire.new("Count Chocula","bat", false )
p vampire1


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_reader :name, :rider, :color, :is_hungry

    def initialize(name, rider, color, is_hungry = true)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = is_hungry
    end

    def eat
        @is_hungry = false
            if @is_hungry && eat_count >= 4
            end
    end
end

dragon1 = Dragon.new("Mag'ladroth", "none", "green")
p dragon1 

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is Frodo, true, if not, false.

class Hobbit
    attr_reader :name, :disposition, :age, :is_adult, :is_old, :has_ring

    def initialize(name, disposition, age = 0)
        @name = name
        @disposition = disposition
        @age = age
        @is_adult = age >= 33
        @is_old = age >= 101
        @has_ring = name == "Frodo"
    end

    def celebrate_birthday
        @age+= 1                # must be @age not @celebrate like i previosuly wrote
        is_adult = age >= 33
        @is_old = age >= 101
    end
end

hobbit1 = Hobbit.new("Frodo", "Weak")
p hobbit1

hobbit2 = Hobbit.new("Sam", "Actual Hero", 38 )
p hobbit2 

hobbit3 = Hobbit.new("Bilbo", "Greedy", 110)
p hobbit3

hobbit3.celebrate_birthday
p hobbit3                   