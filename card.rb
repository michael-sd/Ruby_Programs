class Card
    attr_accessor :rank, :suit

    def initialize(rank, suit)
        self.rank = rank
        self.suit = suit
    end

    def output_card
        puts "#{self.rank} of #{self.suit}"
    end

    def self.random_card
      Card.new(rank, suit)
    end
end

class Deck

    def initialize
        @cards = []
        @rank = [2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K, :A]
        @suit = [:hearts, :diamonds, :spades, :clubs]
        
          @rank.each do |nmbr|
          @suit.each do |st|
        @cards << Card.new(nmbr, st)
        end
      end
    end

    def shuffle
        @cards.shuffle!
    end

    def output
      @cards.each do |card|
        card.output_card
      end
    end

    def deal
      @cards.shift
    end

    def count
      @cards.count
    end
end

deck = Deck.new
deck.shuffle
deck.output
deck.deal

puts deck.count