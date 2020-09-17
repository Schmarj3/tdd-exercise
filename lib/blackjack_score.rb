# blackjack_score.rb
#
# ## Part 1:  Identifying Edge & Nominal Cases
# 1.  What would be two nominal cases?
  # A 2, Queen, and 7 will give a score of 19
  # A Jack, Queen, and Ace will give 21
# 2.  What edge cases can you determine?  Name at least 3.
  # Maybe all face cards
  # all aces
  # all number car
  # dealing more than 4 of a particular card
# 3.  How would you **test** these cases?
  # Have card hand in array as input and return the score

# ## Part 2:  Calculating a Score
# You will write a method called:  `blackjack_score` which take an array of card values and returns the blackjack score.  The card values can be any of the following, number values 2-10, "King", "Queen", "Jack".  If the array contains an invalid card value or the total exceeds 21, raise an `ArgumentError`.  For example `blackjack_score(["Ace", 5, 3])` will return 19.  You should also raise an error if the hand contains more than 5 cards.
# In this exercise you will complete the given tests in `test/blackjack_score_test.rb` and updating the `blackjack_score` method in `lib/blackjack_score.rb` to make it pass.

# Step 1:  Complete the given test
# Step 2:  Update `blackjack_score` to pass the test
# Step 3:  Move to the next test

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

def blackjack_score(hand)
  score = hand.reduce(:+)
  return score
end
