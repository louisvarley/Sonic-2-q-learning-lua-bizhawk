# Reinforcement Learning Sonic the Headgehog 2

Written quickly to test an idea. This script uses a basic form of reinforcement learning to essentially generate a list of commands that can play sonic 2 somewhat well. 

It works by generating a new random button combination every frame and keeping track of a given reward for its actions 

If the run times out it restarts. If the following run fails to beat the maximum reached reward the bad run counter increments. For every bad run counter a number of commands are
removed and regenerated. 

How this does and where it gets stuck is mostly random, i had to code this so it doesnt turn left, only right and jumps. 

Running with left enabled took ages to make progress as essentially has to randomly generate many many rights

## Observations

Comparing this to the NEAT script i also have, this is much more crude however it does seem to get to and get stuck on the same bits (parts where you have to go back to hit a spring) 
On a couple of occasions this did manage to get to the end of the level which considering the simplity of this script is not half bad. 

## Bugs ##

It seems to occsionally get out of sync with the commandset meaning that a run that would be good fails early on
as sonic will jump maybe 1 frame early, unsure why this is. 

## To Do ##
* [x] Save / Load command sets to and from a file
* [x] Save command sets when a new max reward is met. 
* [x] Work out a bias system so it tends to want to go right but can also go left if bad count gets high enough
* [x] Vary the maximum bad run count so it back tracks in a non linary fasion. 