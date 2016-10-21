# Exercise 3
# Create class called 'Rover'
class Rober
# Create method called 'initialize'with
# three 'State' which are 'x coordinate', 'y coordinate'
# and 'direction'.
  def initialize(x_coordinate, y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction    = direction
  end
# Create method with three 'Behavior' which are
# 'read instruction', 'move' and 'turn'.

# Accept an instruction and decide whether
# to tell the rover to move or turn.
# It simply delegates to more specific behavior
  def read_instruction

  end
# Affects position of the rover.  
  def move

  end

  def turn

  end
end
