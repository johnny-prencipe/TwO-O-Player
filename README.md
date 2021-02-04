## Given the following output:

```Player 1: What does 5 plus 3 equal?
> 9
Player 1: Seriously? No!
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
Player 2: What does 2 plus 6 equal?
> 8
Player 2: YES! You are correct.
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
... some time later ...
Player 1 wins with a score of 1/3
----- GAME OVER -----
Good bye!
```

## What should be the possible classes?

* Player class
* playfield class

## What would be the responsibility of each class?

### Player class:
The player class would be responsible for creating the player1 and player2 objects. These objects would contain a boolean value declaring whether it is the current player's turn, and a decrementing value to track their remaining lives.


### Playfield class
The playfield class would be responsbile for retreiving the score of each player and outputting the appropriate text to the playfield between turns.

## What information is relevant to each class?

### Player class:
The information relevant to the player class is:
* Whose turn it is 
* How many lives are remaining


### Playfield class:
The information relevant to the playfield is:
* How many lives are remaining on each player?
* What numbers to print to the playfield
* Whether the input entered by the player is correct
* Whose turn it is 

## Which class should manage who the current_player is?
* playfield class

## Which class(es) will contain user I/O and which will not have any?
* The playfield class is the only class which will handle user input.