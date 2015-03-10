package problem54;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class CardTests {
    @Test
    public void comparators() {
        assertEquals(Card.from("4H"), Card.from("4H"));
        assertEquals(Card.from("5H"), Card.from("5S"));
    }
}
