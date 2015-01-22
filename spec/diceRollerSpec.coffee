
sum = [1..10].reduce ((t, n) -> t + n), 0
console.log sum


diceRoller = require "../src/index"

describe "existance", ->

  it "should exist", ->
    (expect diceRoller).not.toBeUndefined()

  # test the diceRoller.rollDice method
  it "should have a rollDice method ", ->
    (expect diceRoller.rollDice).not.toBeUndefined()
    rollDiceType = typeof diceRoller.rollDice
    (expect rollDiceType).toBe "function"

  # test the result of the diceRoller.rollDice method
  it "should have a rollDice method and should be able to roll a die", ->
    spy = (spyOn Math, "random")
    spy.andReturn 0.5
    (expect diceRoller.rollDice()).toBe 4
    (expect diceRoller.rollDice 10).toBe 6
    (expect diceRoller.rollDice 10, 3).toBe 18
    (expect diceRoller.rollDice 100).toBe 51

    spy.andReturn 0.99999
    (expect diceRoller.rollDice 2).toBe 2
    (expect diceRoller.rollDice 4).toBe 4
    (expect diceRoller.rollDice 6).toBe 6
    (expect diceRoller.rollDice 10).toBe 10
    (expect diceRoller.rollDice 18).toBe 18
    (expect diceRoller.rollDice 20).toBe 20
    (expect diceRoller.rollDice 100).toBe 100

  # test the diceRoller.rollList method
  it "should have a rollList method ", ->
    (expect diceRoller.rollList).not.toBeUndefined()
    rollListType = typeof diceRoller.rollList
    (expect rollListType).toBe "function"

  # test the result of the diceRoller.rollList method
  it "should have a an array of rolled items", ->
    spy = (spyOn Math, "random")
    spy.andReturn 0.5
    (expect diceRoller.rollList 6, 4).toEqual [4,4,4,4]
    (expect diceRoller.rollList 10, 2).toEqual [6,6]

  it "should return 4 when random returns 0.5", ->
    (spyOn Math, 'random').andReturn 0.5
    (expect diceRoller.d6()).toBe 4

  it "should have a function d6() which should roll between 0 and 7", ->
    (expect diceRoller.d6).not.toBeUndefined()
    (expect diceRoller.d6()).toBeGreaterThan 0
    (expect diceRoller.d6()).toBeLessThan 7

