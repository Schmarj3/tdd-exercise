require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/blackjack_score'

#Notes From Tutoring Session
# make sure test match expectation - target things that you want to target = accuracy
# define unit test
# edge cases - regression testing (can be unit, functional, etc.)
# integration test - they take a long time - talking to the database, webservice, anything that intergrates with program, cant be offline
# integration test - coelesc code from multiple places - like two systems doing things separately now working together - making sure they function together
# validates high-level user input, where complex behavior is happening is more valuable
# test your business cases, use cases, fill in the gaps with unit, etc.
# a website is always in a particular state - say if a button is clicked, state may change; a lot of browsers
# unit test JS code
# test help document how the code is supposed to work
# what are you building, who for, what is it supposed to do
# BDD (Behavior Driven Development) - subset of TDD
# testing can be governed by regulations
# out of date tests can give false sense of validity
# What are things that cannot happen, things that absolutely should happen, things that could happen
# pre-commit hooks

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Blackjack Score' do
  it 'can calculate the score for a pair of number cards' do

    # Arrange
    hand = [3, 4]

    # Act
    score = blackjack_score(hand)

    # Assert <-  You do this part!
    expect(score).must_be_instance_of Integer
  end

  it 'facecards have values calculated correctly' do
    # Arrange
    hand = ['Queen', 4]
    expected_score = 14

    # Act
    score = blackjack_score(hand)

    # Assert <-  You do this part!
    expect(score).must_equal expected_score
  end

  it 'facecards have values calculated correctly' do
    # Arrange
    hand = ['Jack', 4]

    expected_score = 14
    # Act
    score = blackjack_score(hand)

    # Assert <-  You do this part!
    expect(score).must_equal expected_score
  end

  it 'facecards have values calculated correctly' do
    # Arrange
    hand = ['King', 4]

    expected_score = 14
    # Act
    score = blackjack_score(hand)

    # Assert <-  You do this part!
    expect(score).must_equal expected_score
  end

  it 'facecards have values calculated correctly' do
    # Arrange
    hand = ['King', 'Ace', 'Queen']

    expected_score = 21
    # Act
    score = blackjack_score(hand)

    # Assert <-  You do this part!
    expect(score).must_equal expected_score
  end

  it 'facecards have values calculated correctly' do
    # Arrange
    hand = ['Queen', 'Ace']

    expected_score = 21
    # Act
    score = blackjack_score(hand)

    # Assert <-  You do this part!
    expect(score).must_equal expected_score
  end

  it 'calculates aces as 11 where it does not go over 21' do
    # Arrange
    hand = ['Ace', 4]

    expected_score = 15
    # Act
    score = blackjack_score(hand)

    # Assert <-  You do this part!
    expect(score).must_equal expected_score
  end

  it 'calculates aces as 1, if an 11 would cause the score to go over 21' do
    # Arrange
    hand = ['Ace', 4, 'Jack']

    expected_score = 15
    # Act
    score = blackjack_score(hand)

    # Assert <-  You do this part!
    expect(score).must_equal expected_score
  end

  it 'raises an ArgumentError for invalid cards' do
    # Arrange
    hand = ['Ace', 4, 'Jack', 'Ace', 2, 3]

    # Assert <-  You do this part!
    expect{blackjack_score(hand)}.must_raise ArgumentError
  end

  it 'raises an ArgumentError for scores over 21' do
    # Arrange
    hand = ['Ace', 4, 'Jack', 'Ace', 8]

    # Assert <-  You do this part!
    expect{blackjack_score(hand)}.must_raise ArgumentError
  end
end
