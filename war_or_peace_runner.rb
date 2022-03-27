require 'pry'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

card2 = Card.new(:heart, '2', 2)
card3 = Card.new(:heart, '3', 3)
card4 = Card.new(:heart, '4', 4)
card5 = Card.new(:heart, '5', 5)
card6 = Card.new(:heart, '6', 6)
card7 = Card.new(:heart, '7', 7)
card8 = Card.new(:heart, '8', 8)
card9 = Card.new(:heart, '9', 9)
card10 = Card.new(:heart, '10', 10)
card12 = Card.new(:diamond, '2', 2)
card13 = Card.new(:diamond, '3', 3)
card14 = Card.new(:diamond, '4', 4)
card15 = Card.new(:diamond, '5', 5)
card16 = Card.new(:diamond, '6', 6)
card17 = Card.new(:diamond, '7', 7)
card18 = Card.new(:diamond, '8', 8)
card19 = Card.new(:diamond, '9', 9)
card20 = Card.new(:diamond, '10', 10)
card22 = Card.new(:spade, '2', 2)
card23 = Card.new(:spade, '3', 3)
card24 = Card.new(:spade, '4', 4)
card25 = Card.new(:spade, '5', 5)
card26 = Card.new(:spade, '6', 6)
card27 = Card.new(:spade, '7', 7)
card28 = Card.new(:spade, '8', 8)
card29 = Card.new(:spade, '9', 9)
card30 = Card.new(:spade, '10', 10)
card32 = Card.new(:club, '2', 2)
card33 = Card.new(:club, '3', 3)
card34 = Card.new(:club, '4', 4)
card35 = Card.new(:club, '5', 5)
card36 = Card.new(:club, '6', 6)
card37 = Card.new(:club, '7', 7)
card38 = Card.new(:club, '8', 8)
card39 = Card.new(:club, '9', 9)
card40 = Card.new(:club, '10', 10)
card41 = Card.new(:heart, 'Jack', 11)
card42 = Card.new(:heart, 'Queen', 12)
card43 = Card.new(:heart, 'King', 13)
card44 = Card.new(:heart, 'Ace', 14)
card45 = Card.new(:diamond, 'Jack', 11)
card46 = Card.new(:diamond, 'Queen', 12)
card47 = Card.new(:diamond, 'King', 13)
card48 = Card.new(:diamond, 'Ace', 14)
card49 = Card.new(:spade, 'Jack', 11)
card50 = Card.new(:spade, 'Queen', 12)
card51 = Card.new(:spade, 'King', 13)
card52 = Card.new(:spade, 'Ace', 14)
card1 = Card.new(:club, 'Jack', 11)
card11 = Card.new(:club, 'Queen', 12)
card21 = Card.new(:club, 'King', 13)
card31 = Card.new(:club, 'Ace', 14)

deck1 = Deck.new([card1, card2, card3, card4, card5, card6, card7, card8, card9, card10, card11, card12, card13, card14, card15, card16, card17, card18, card19, card20, card21, card22, card23, card24, card25, card26, card27, card28, card29, card30, card31, card32, card33, card34, card35, card36, card37, card38, card39, card40, card41, card42, card43, card44, card45, card46, card47, card48, card49, card50, card51, card52])
deck2 = Deck.new([])
deck3 = Deck.new([])

deck1.cards.shuffle!

26.times do
  deck2.cards << deck1.cards[1]
  deck1.remove_card
end

26.times do
  deck3.cards << deck1.cards[1]
  deck1.remove_card
end

player1 = Player.new("Link", deck2)
player2 = Player.new("Gannondorf", deck3)

turn = Turn.new(player1, player2)
@turn_count = 0
turn.start


# loop do until player1.deck.cards == [] || player2.deck.cards == [] || @count == 1000000
#   turn.pile_cards
#   turn.winner
#   winner = turn.winner
#   turn.award_spoils(winner)
#   @turn_count += 1
#   end
# end