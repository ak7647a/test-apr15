#+ Monty Hall Simulation
#+ SIS 750
#+ Spring 2026
#+ Prof. Austin Hart


# Setup ------
library(tidyverse)
library(knitr)

#simulation ------

## set the stage
doors <- c('A','B','C')

##keep score 
results <- NA

## run the game
for (i in 1:10000) {
car <- sample(doors, 1) #puts car behind 1 door at random
choice <- sample(doors, 1) #has a contestant choose a door
reveal <- sample(doors[doors != car & doors != choice],1) #reveals a goat the sign [ ] helps makes a condition within a value

switch <- sample(doors[doors !=choice & doors != reveal],1) #switch between the remaining door that hasn't already been chosen
results[i] <- if_else(car==choice, "Paul wins", "Marilyn wins")}

table(results)

