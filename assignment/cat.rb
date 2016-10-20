# Exercise 1
# 1. Create a class called 'Cat'
class Cat
# 2. Create Three Attributes : 'name', 'preferred_food', 'meal_time'
# 2. 1. Add 'initialize' method
# 2. 2. Load class into the console and then
#       creating new instances of class
  def initialize(name, preferred_food, meal_time)
    @name           = name
    @preferred_food = preferred_food
    @meal_time      = meal_time

  end
# 4. Add instence method called 'eats_at'
#    Returns the hours of the day with
#    AM or PM - Return value should be like "11 AM"
  def eats_at
    if (@meal_time) <= 11
       "#{@meal_time} AM"
    else
       "#{(@meal_time - 12)} PM"
    end
  end
# 5. Add an instence method called 'Meow'
#    Returns a string of the cat telling
#    Like this "My name is Sparkles and I eat.."
  def meow
    " My name is #{@name} and I eat #{@preferred_food} at #{eats_at}."
  end
end

# 3. Create two instances of the Cat class
#    in the file
garfield = Cat.new('Garfield', 'Tuna', 6)
sparkles = Cat.new('Sparkles', 'Ham', 19)

# 6. Call the 'meow' method
#    on each of the cats in Step 3
garfield.meow
sparkles.mewo
