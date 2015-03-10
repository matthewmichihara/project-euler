package problem54;

import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * Created by mattm on 2/15/15.
 */
public class HandTests {
    @Test
    public void testHands() {
        Hand hand = Hand.from("3H 4H 5H 6H 7H");
        assertEquals(true, hand.isFlush());
    }

    @Test public void testRoyalFlushes() {
        Hand hand = Hand.from("TH JH QH KH AH");
        assertEquals(true, hand.isRoyalFlush());
    }
}
