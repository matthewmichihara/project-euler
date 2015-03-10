package problem54;

import com.google.common.base.Joiner;
import com.google.common.base.Splitter;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Hand implements Comparable<Hand> {
    private static final List<Card.Rank> ROYALS = Arrays.asList(Card.Rank.TEN, Card.Rank.JACK, Card.Rank.QUEEN, Card.Rank.KING, Card.Rank.ACE);

    private final List<Card> cards;

    private Hand(List<Card> cards) {
        this.cards = cards;
    }

    public static Hand from(String handString) {
        List<String> cardStrings = Splitter.on(" ").splitToList(handString);
        List<Card> cards = cardStrings.stream().map(Card::from).collect(Collectors.toList());
        return new Hand(cards);
    }

    @Override
    public String toString() {
        return String.format("[%s]", Joiner.on(", ").join(cards));
    }

    @Override
    public int compareTo(Hand other) {
        return 0;
    }

    public boolean isRoyalFlush() {
        return isFlush() && cards.stream().map(c -> c.rank).collect(Collectors.toList()).containsAll(ROYALS);

    }

    public boolean isFlush() {
        if (cards.isEmpty()) return false;

        Card.Suit suit = cards.get(0).suit;

        return cards.stream().allMatch(c -> c.suit == suit);
    }
}