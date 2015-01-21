# ckDice

This is a little dice utility library with some convenience methods wrapped around a little dice function. 

## version
v1.0.0

## walkthrough

When you require the library you get an instance of the DiceRoller class:

```js
var diceRoller = require('ck-dice');
```

The main usage is the ```rollDice``` method. ```rollDice``` takes two parameters, the number of sides of the dice you want to roll and the number of dice you want rolled. You will get the sum of the number of dice rolled as a result. The next code example will roll four, six sided die.

```js
var diceRoller = require('ck-dice');
console.log( diceRoller.rollDice(6, 4);
// result: 13
```

If you want to get an array of rolled dice back you can use the ```rollList``` function. This function also takes the number of sides and the number of dice as parameters and returns an array of integers.

```js
var diceRoller = require('ck-dice');
console.log( diceRoller.rollList(10, 10);
// result: [ 4, 8, 3, 1, 6, 9, 2, 9, 3, 9 ]
```

There are also 9 convenience methods on the object representing the standard dice you could use. These methods take the number of dice and return a integer representing the sum the of the rolls. The methods area called as follows:
1. ```d2()```
2. ```d4()```
3. ```d6()```
4. ```d8()```
5. ```d10()```
6. ```d12()```
7. ```d18()```
8. ```d20()```
9. ```d100()```

## Conclusion
If you find a bug or want to add some features, let me know. This project is still under active development. 