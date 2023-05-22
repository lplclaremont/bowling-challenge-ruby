Bowling Challenge in Ruby
=================

## Outline

This is a ruby program which handles the calculation of scores in a bowling game for one player. It is based on regular bowling rules and is designed to find the running total after each frame is played (to be inputted by the user).

I have structured it such that the Frame class creates frame instances which contain:
- rolls, an array containing the number of pins knocked in each roll of the frame. 
- Methods to check whether the frame was a strike or spare.
- Methods to get the score of a frame, which is updated if the frame is a spare or strike by their respective add bonus methods.

The BowlingGame class instantiates game objects with an empty array of frames in the game about to be played. Game objects contain:
- Add frame method to add a frame to the game.
- Total score method to find the running total up to a certain frame
- Private methods for finding the score sum and updating scores for spares / strikes based on the following rolls

This was a very complex algorithm to plan out given the necessity to hold off on getting a running total of the score immediately after a spare / strike is thrown (it must update only when it knows the bonus from the following rolls)

In my tests, when refering to a 'simple frame', I mean a frame in which the player has not rolled a spare or a strike.
