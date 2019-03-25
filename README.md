# mars_rover
Problem : Mars Rover

A squad of robotic rovers are to be landed by NASA on a plateau on Mars. This plateau, which is curiously rectangular, must be navigated by the rovers so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.

A rover’s position and location is represented by a combination of x and y co-ordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.

In order to control a rover, NASA sends a simple string of letters. The possible letters are ‘L’, ‘R’ and ‘M’. ‘L’ and ‘R’ makes the rover spin 90 degrees left or right respectively, without moving from its current spot. ‘M’ means move forward one grid point, and maintain the same heading.

Assume that the square directly North from (x, y) is (x, y+1).

Input:

The first line of input is the upper-right coordinates of the plateau, the lower-left coordinates are assumed to be 0,0.
The rest of the input is information pertaining to the rovers that have been deployed. Each rover has two lines of input. The first line gives the rover’s position, and the second line is a series of instructions telling the rover how to explore the plateau.
The position is made up of two integers and a letter separated by spaces, corresponding to the x and y co-ordinates and the rover’s orientation.
Each rover will be finished sequentially, which means that the second rover won’t start to move until the first one has finished moving.

Output: The output for each rover should be its final co-ordinates and heading.

Input and Output

Test Input:
5 5
1 2 N
LMLMLMLMM
3 3 E
MMRMMRMRRM

Expected Output:
1 3 N
5 1 E

-----------------

User Stories

As a rover
So that I can change location
I want to be able to move upwards

As a rover
So that I can change location
I want to be able to move downwards

As a rover
So that I can change location
I want to be able to move leftwards

As a rover
So that I can change location
I want to be able to move rightwards

As a rover
So that I can look at things
I want to be able to change directions

As a rover
So that I can go where I want
I want to move according to where I am facing

As a rover
So that I know where I am
I want a map to be created for me to walk on

As a rover
So that I don't fall off the map
I want an error message if I go out of bounds

-----------
Explanation of design:

My process of writing code consists of starting the project by writing user stories. I then diagram how the project looks either on paper or in my head, depending on its size and then finally start with the actual code.
Initially I created a way to increase x and y values as a starting point of my code. Following that, I attempted to create 4 different instance variables in x, y, direction and position as those would be the only variables changing. Finally, I wrote the move method which simply changed either x or y according to the direction. I concluded by refactoring my code in the cleanest and DRYest way possible. After that, I created a new file with a new class for map.
The user is able to interact with my application with a REPL such as irb. I decided to write it in this way as I perceived the person using it will be familiar with coding and will be able to interact with it in that way.
