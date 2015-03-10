package problem54;


import com.google.common.collect.ComparisonChain;

import java.util.Objects;

public class Card implements Comparable<Card> {
    public enum Rank {
        TWO("2"),
        THREE("3"),
        FOUR("4"),
        FIVE("5"),
        SIX("6"),
        SEVEN("7"),
        EIGHT("8"),
        NINE("9"),
        TEN("T"),
        JACK("J"),
        QUEEN("Q"),
        KING("K"),
        ACE("A");

        private final String name;

        Rank(String name) {
            this.name = name;
        }

        @Override
        public String toString() {
            return this.name;
        }
    }

    public enum Suit {
        HEARTS("H"), CLUBS("C"), SPADES("S"), DIAMONDS("D");

        private final String name;

        Suit(String name) {
            this.name = name;
        }

        @Override
        public String toString() {
            return name;
        }
    }

    public final Rank rank;
    public final Suit suit;

    private Card(Rank rank, Suit suit) {
        this.rank = rank;
        this.suit = suit;
    }

    public static Card from(String s) {
        if (s.length() != 2) throw new IllegalArgumentException("s must be a 2 character String such as 3H");

        char rankChar = s.charAt(0);
        char suitChar = s.charAt(1);

        Rank rank;
        switch (rankChar) {
            case '2':
                rank = Rank.TWO;
                break;
            case '3':
                rank = Rank.THREE;
                break;
            case '4':
                rank = Rank.FOUR;
                break;
            case '5':
                rank = Rank.FIVE;
                break;
            case '6':
                rank = Rank.SIX;
                break;
            case '7':
                rank = Rank.SEVEN;
                break;
            case '8':
                rank = Rank.EIGHT;
                break;
            case '9':
                rank = Rank.NINE;
                break;
            case 'T':
                rank = Rank.TEN;
                break;
            case 'J':
                rank = Rank.JACK;
                break;
            case 'Q':
                rank = Rank.QUEEN;
                break;
            case 'K':
                rank = Rank.KING;
                break;
            case 'A':
                rank = Rank.ACE;
                break;
            default:
                throw new IllegalArgumentException("Unknown rank - " + rankChar);
        }

        Suit suit;
        switch (suitChar) {
            case 'H':
                suit = Suit.HEARTS;
                break;
            case 'C':
                suit = Suit.CLUBS;
                break;
            case 'S':
                suit = Suit.SPADES;
                break;
            case 'D':
                suit = Suit.DIAMONDS;
                break;
            default:
                throw new IllegalArgumentException("Unknown suit - " + suitChar);
        }

        return new Card(rank, suit);
    }

    @Override
    public String toString() {
        return String.format("%s%s", rank, suit);
    }

    @Override
    public boolean equals(Object object) {
        if (object == null) return false;
        if (getClass() != object.getClass()) return false;

        Card that = (Card) object;

        return Objects.equals(this.rank, that.rank);
    }

    @Override
    public int hashCode() {
        return Objects.hash(rank, suit);
    }

    @Override
    public int compareTo(Card that) {
        return ComparisonChain.start().compare(this.rank, that.rank).result();
    }
}