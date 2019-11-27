## Mars Rover Challenge

[Link to challenge](https://code.google.com/archive/p/marsrovertechchallenge/)

#### Assumptions made during the challenge
- More than a single Rover can occupy the same space 
  - It's mars, a grid block could be square kilometers in size, we wouldn't know...
- The Rovers cannot go outside the bounds of the Plateau it's on
    - It will stand still when it moves towards a wall / bounds

#### First Phase
- In this phase I made sure that the basic structure works and that the Rover and Plateau models work together as they should.
- I wrote some hardcoded inputs in `remote_control.rb` to make sure that the code works as intended.
  - The input in this file was the basic input in the challenge as well as 4 more inputs to test whether the rover goes out of bounds in any direction.
- This code is run by using: `ruby remote_control.rb`