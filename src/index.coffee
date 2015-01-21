

class DiceRoller

  constructor: ->

  rollDice: (sides = 6, numberOfDice = 1) ->
    roll = Math.floor((Math.random() * sides) + 1)
    return roll if numberOfDice == 1
    return roll + @rollDice sides, numberOfDice - 1

  d2:   (numberOfDice = 1) -> @rollDice   2, numberOfDice
  d4:   (numberOfDice = 1) -> @rollDice   4, numberOfDice
  d6:   (numberOfDice = 1) -> @rollDice   6, numberOfDice
  d8:   (numberOfDice = 1) -> @rollDice   8, numberOfDice
  d10:  (numberOfDice = 1) -> @rollDice  10, numberOfDice
  d12:  (numberOfDice = 1) -> @rollDice  12, numberOfDice
  d18:  (numberOfDice = 1) -> @rollDice  18, numberOfDice
  d20:  (numberOfDice = 1) -> @rollDice  20, numberOfDice
  d100: (numberOfDice = 1) -> @rollDice 100, numberOfDice

  rollList: (sides = 6, numberOfDice = 1, list = []) ->
    list.push @rollDice sides
    return list if numberOfDice == 1
    return @rollList sides, numberOfDice - 1, list


module.exports = new DiceRoller
