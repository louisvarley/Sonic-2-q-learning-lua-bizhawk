# Reinforcement Learning Sonic the Headgehog 2

Written quickly to test an idea. This script uses a basic form of reinforcement learning to essentially generate a list of commands that can play sonic 2 somewhat well. 

It works by generating a new random button combination every frame and keeping track of a given reward for its actions 

* If it runs out of time out it restarts.
* If the following run fails to beat the maximum reached reward the bad run counter increments. 
* For every bad run counter a punishment percentage is applied removing a percentage of commands
* How this does and where it gets stuck is mostly random, 
* I had to code this with a badly written right hand bias so it gets stuck if it needs to go back

## Observations

Comparing this to the NEAT script i also have, this is much more crude however it does seem to get to and get stuck on the same bits (parts where you have to go back to hit a spring) 
On a couple of occasions this did manage to get to the end of the level which considering the simplity of this script is not half bad. 

Further comparison to my NEAT scripts, this seems to learn quicker. NEAT would take around 19 generations and maybe 12 hours to reach a point
this script was able to get to in only half an hour but this is less adaptable. More of a bruteforce method than using inputs and outputs.

## Button Bias and Priority ##

You can set and play with button Bias in the config. Essentially, when its doing well, it will look to use the highier bias buttons
these should be right, followed by A. should it find itself stuck, the timeout drops below a number and it will start to choose lower bias buttons
such a left to see if this gets it out its hole!

## Bugs ##

It seems to occsionally get out of sync with the commandset meaning that a run that would be good fails early on
as sonic will jump maybe 1 frame early, unsure why this is. 

## To Do ##
* Load command set from a file
* [x]Save command sets when a new max reward is met. 
* [x]Work out a decent bias system so it tends to want to go right but can also go left if bad count gets high enough
* Allow bias to increase if X count stops